import os
import random
import sys
import unicodedata
from datetime import date, datetime, time, timedelta

try:
    from faker import Faker
except ImportError:
    print("=" * 60)
    print("ERROR: Falta la librería 'Faker'.")
    sys.exit(1)
Faker.seed(42)
random.seed(42)
FAKE = Faker("es_MX")  

SCRIPT_DIR = "scripts"

N_CLIENTES = 50
N_HABITACIONES = 50
N_EMPLEADOS = 50
N_RESERVAS = 50
N_PAGOS = 50
N_LOGS = 50

TODAY = date.today()
BASE_DATE = TODAY - timedelta(days=60)

# ACA VA LA SECCION DE CATALOGOS FIJOS
TIPOS_HABITACION = [
    ("Individual",850.00),
    ("Doble", 1200.00),
    ("Matrimonial", 1500.00),
    ("Suite Junior", 2500.00),("Individual", 850.00),
    ("Suite Presidencial", 5000.00),
]

PUESTOS = [
    "Recepcionista", "Camarista", "Mesero", "Cocinero",
    "Gerente", "Conserje", "Mantenimiento", "Contador", "Botones", "Chef",
]

METODOS_PAGO = [
    "Tarjeta de crédito", "Efectivo", "Transferencia", "PayPal", "Tarjeta de débito",
]

STATUS_HABITACION = ["disponible", "ocupada", "mantenimiento", "limpieza"]

DOMINIOS_CORREO = [
    "example.com", "hotmail.com" , "live.com",
]

# Funciones de utilidad

def sql_str(valor: str) -> str:
    #Escapa y entrecomilla un valor de texto para SQL de mysql
    return "'" + valor.replace("'", "''") + "'"


def f_fecha(f: date) -> str:
    return f.strftime("%Y-%m-%d")

    #formate a a DATETIME
def f_datetime(ts: datetime) -> str:
    return f"{ts:%Y-%m-%d %H:%M:%S}.{ts.microsecond:06d}"

# GENERACION ARCHIVO 01
def email_desde_nombre(nombre: str) -> str:
    normalizado = unicodedata.normalize("NFKD", nombre)
    ascii_only = normalizado.encode("ascii", "ignore").decode().lower()
    partes = [p for p in ascii_only.replace("'", " ").split() if p.isalpha()]
    if len(partes) >= 2:
        base = f"{partes[0]}.{partes[1]}"
    elif partes:
        base = partes[0]
    else:
        base = "cliente"
    return f"{base}.{random.randint(10, 99)}@{random.choice(DOMINIOS_CORREO)}"


def telefono() -> str:
    lada = random.choice(["55", "56", "81", "33", "44", "22", "99", "662", "614"])
    numero = f"{random.randint(1000000, 99999999):08d}"
    return f"+52 {lada} {numero[:4]} {numero[4:]}"


# metodo que genera a los clientes
def generar_clientes():
    clientes = []
    for i in range(1, N_CLIENTES + 1):
        nombre = FAKE.name()
        clientes.append({
            "id": i,
            "nombre": nombre,
            "correo": email_desde_nombre(nombre),
            "telefono": telefono(),
        })
    return clientes

# metodo que genera las habiataciones con tipo realista y precio coherente
def generar_habitaciones():
    habitaciones = []
    for i in range(1, N_HABITACIONES + 1):
        tipo, precio_base = random.choice(TIPOS_HABITACION)
        precio = round(precio_base + random.uniform(0, 150), 2)
        habitaciones.append({"id": i, "tipo": tipo, "precio": precio})
    return habitaciones


# metodo que genera a los empleados con puestos realistas
def generar_empleados():
    empleados = []
    for i in range(1, N_EMPLEADOS + 1):
        empleados.append({
            "id": i,
            "nombre": FAKE.name(),
            "puesto": random.choice(PUESTOS),
        })
    return empleados

# metodo que genera las reservas
# Las FKs (CLIENTE_id_cliente, HABITACION_id_habitacion) se eligen
# dentro del rango 1..50, que son exactamente los ids generados en el
# archivo 01, así que nunca hay FKs huérfanas.

def generar_reservas():
    reservas = []
    for i in range(1, N_RESERVAS + 1):
        entrada = BASE_DATE + timedelta(days=random.randint(0, 30))
        salida = entrada + timedelta(days=random.randint(1, 14))
        reservas.append({
            "id": i,
            "fecha_entrada": entrada,
            "fecha_salida": salida,
            "id_cliente": random.randint(1, N_CLIENTES),
            "id_habitacion": random.randint(1, N_HABITACIONES),
        })
    return reservas


# metodo que sirve para la generacion de pago, archivo 04, uno por cada reserva
def generar_pagos(reservas, habitaciones):

    precios = {h["id"]: h["precio"] for h in habitaciones}
    pagos = []
    for i, res in enumerate(reservas, start=1):
        noches = (res["fecha_salida"] - res["fecha_entrada"]).days
        monto = round(precios[res["id_habitacion"]] * noches, 2)

        limite_pago = min(res["fecha_salida"] + timedelta(days=3), TODAY)
        dias_disponibles = (limite_pago - res["fecha_entrada"]).days
        dias_extra = random.randint(0, max(0, dias_disponibles))
        fecha_pago = datetime.combine(
            res["fecha_entrada"] + timedelta(days=dias_extra),
            time(random.randint(8, 20), random.randint(0, 59), random.randint(0, 59)),
        )
        pagos.append({
            "id": i,
            "fecha_pago": fecha_pago,
            "monto": monto,
            "metodo_pago": random.choice(METODOS_PAGO),
            "id_reserva": res["id"],
            "id_empleado": random.randint(1, N_EMPLEADOS),
        })
    return pagos


# generacion de log habitacion archivo 03 y 05
def generar_logs(inicio: datetime, n: int):
    t = inicio
    logs = []
    for _ in range(n):
        t += timedelta(
            hours=random.randint(1, 5),
            minutes=random.randint(0, 59),
            seconds=random.randint(0, 59),
            microseconds=random.randint(1, 999999),  #aca se aplica el DATETIME(6)
        )
        logs.append({
            "timestamp": t,
            "status": random.choice(STATUS_HABITACION),
            "id_habitacion": random.randint(1, N_HABITACIONES),
        })
    return logs


def escribir_archivo_01(clientes, habitaciones, empleados):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "- CLIENTE -----------------------------\n"
    for c in clientes:
        texto += (
            f"INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES "
            f"({c['id']}, {sql_str(c['nombre'])}, {sql_str(c['correo'])}, {sql_str(c['telefono'])});\n"
        )

    texto += "\n- HABITACION ----------------------------\n"
    for h in habitaciones:
        texto += (
            f"INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES "
            f"({h['id']}, {sql_str(h['tipo'])}, {h['precio']:.2f});\n"
        )

    texto += "\n- EMPLEADO -----------------------------\n"
    for e in empleados:
        texto += (
            f"INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES "
            f"({e['id']}, {sql_str(e['nombre'])}, {sql_str(e['puesto'])});\n"
        )

    return texto


def escribir_archivo_02(reservas):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "-- ---------------------------- RESERVA -----------------------------\n"
    for r in reservas:
        texto += (
            f"INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, "
            f"CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES "
            f"({r['id']}, '{f_fecha(r['fecha_entrada'])}', '{f_fecha(r['fecha_salida'])}', "
            f"{r['id_cliente']}, {r['id_habitacion']});\n"
        )

    return texto


def escribir_archivo_03(logs):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "-- ------------------------- LOG_HABITACION (1) ----------------------\n"
    for lg in logs:
        texto += (
            f"INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES "
            f"('{f_datetime(lg['timestamp'])}', {sql_str(lg['status'])}, {lg['id_habitacion']});\n"
        )

    return texto


def escribir_archivo_04(pagos):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "-- ----------------------------- PAGO -------------------------------\n"
    for p in pagos:
        texto += (
            f"INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, "
            f"RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES "
            f"({p['id']}, '{f_datetime(p['fecha_pago'])}', {p['monto']:.2f}, "
            f"{sql_str(p['metodo_pago'])}, {p['id_reserva']}, {p['id_empleado']});\n"
        )

    return texto


def escribir_archivo_05(logs):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "-- ------------------------- LOG_HABITACION (2) ----------------------\n"
    for lg in logs:
        texto += (
            f"INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES "
            f"('{f_datetime(lg['timestamp'])}', {sql_str(lg['status'])}, {lg['id_habitacion']});\n"
        )

    return texto


# ---------------------------------------------------------------------------
def main():
    clientes     = generar_clientes()
    habitaciones = generar_habitaciones()
    empleados    = generar_empleados()

    reservas = generar_reservas()
    pagos    = generar_pagos(reservas, habitaciones)   

    logs_1 = generar_logs(datetime.combine(BASE_DATE, time(0, 0, 0)), N_LOGS)
    logs_2 = generar_logs(logs_1[-1]["timestamp"] + timedelta(hours=1), N_LOGS)

    archivos = {
        f"{SCRIPT_DIR}/01_carga_dia1.sql": escribir_archivo_01(clientes, habitaciones, empleados),
        f"{SCRIPT_DIR}/02_carga_dia2.sql": escribir_archivo_02(reservas),
        f"{SCRIPT_DIR}/03_carga_dia3.sql": escribir_archivo_03(logs_1),
        f"{SCRIPT_DIR}/04_carga_dia4.sql": escribir_archivo_04(pagos),
        f"{SCRIPT_DIR}/05_carga_dia5.sql": escribir_archivo_05(logs_2),
    }

    os.makedirs(SCRIPT_DIR, exist_ok=True)
    for ruta, contenido in archivos.items():
        with open(ruta, "w", encoding="utf-8") as fh:
            fh.write(contenido)
        print(f"Generado: {ruta}")
if __name__ == "__main__":
    main()
