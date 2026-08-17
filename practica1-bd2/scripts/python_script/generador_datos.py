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

TODAY = date.today()
BASE_DATE = TODAY - timedelta(days=60)

# ACA VA LA SECCION DE CATALOGOS FIJOS
TIPOS_HABITACION = [
    ("Individual", 850.00),
    ("Doble", 1200.00),
    ("Matrimonial", 1500.00),
    ("Suite Junior", 2500.00),
    ("Suite Presidencial", 5000.00),
]

PUESTOS = [
    "Recepcionista", "Camarista", "Mesero", "Cocinero",
    "Gerente", "Conserje", "Mantenimiento", "Contador", "Botones", "Chef",
]

PUESTOS_COBRO = ["Recepcionista", "Gerente", "Contador"]

METODOS_PAGO = [
    "Tarjeta de crédito", "Efectivo", "Transferencia", "PayPal", "Tarjeta de débito",
]

STATUS_HABITACION = ["disponible", "ocupada", "mantenimiento", "limpieza"]

DOMINIOS_CORREO = [
    "example.com", "hotmail.com", "live.com",
]

# Funciones de utilidad

def sql_str(valor: str) -> str:
    return "'" + valor.replace("'", "''") + "'"


def f_fecha(f: date) -> str:
    return f.strftime("%Y-%m-%d")

    #formate a a DATETIME
def f_datetime(ts: datetime) -> str:
    return f"{ts:%Y-%m-%d %H:%M:%S}.{ts.microsecond:06d}"

# Metodos de utileria 

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
    numero = f"{random.randint(1000000, 99999999):08d}"
    return f"+502 {numero[:4]} {numero[4:]}"


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

# metodo que genera las reservas sin superposicion de habitaciones
def generar_reservas():
    reservas = []
    ocupacion_por_habitacion = {}
    intentos_max = 200

    for i in range(1, N_RESERVAS + 1):
        for _ in range(intentos_max):
            entrada = BASE_DATE + timedelta(days=random.randint(0, 30))
            salida = entrada + timedelta(days=random.randint(1, 14))
            id_hab = random.randint(1, N_HABITACIONES)

            solapado = False
            for inicio, fin in ocupacion_por_habitacion.get(id_hab, []):
                if entrada < fin and salida > inicio:
                    solapado = True
                    break

            if not solapado:
                ocupacion_por_habitacion.setdefault(id_hab, []).append((entrada, salida))
                reservas.append({
                    "id": i,
                    "fecha_entrada": entrada,
                    "fecha_salida": salida,
                    "id_cliente": random.randint(1, N_CLIENTES),
                    "id_habitacion": id_hab,
                })
                break
        else:
            entrada = BASE_DATE + timedelta(days=random.randint(0, 30))
            salida = entrada + timedelta(days=random.randint(1, 14))
            id_hab = random.randint(1, N_HABITACIONES)
            reservas.append({
                "id": i,
                "fecha_entrada": entrada,
                "fecha_salida": salida,
                "id_cliente": random.randint(1, N_CLIENTES),
                "id_habitacion": id_hab,
            })

    return reservas


# metodo que sirve para la generacion de pago, archivo 04, uno por cada reserva
def generar_pagos(reservas, habitaciones, empleados):

    precios = {h["id"]: h["precio"] for h in habitaciones}
    empleados_cobro = [e["id"] for e in empleados if e["puesto"] in PUESTOS_COBRO]
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
            "id_empleado": random.choice(empleados_cobro),
        })
    return pagos


# generacion de log habitacion basado en eventos reales de reservas
def generar_logs(reservas, habitaciones, inicio_rango, fin_rango):
    eventos = []
    habitaciones_ids = [h["id"] for h in habitaciones]

    for res in reservas:
        id_hab = res["id_habitacion"]
        entrada = datetime.combine(res["fecha_entrada"], time(12, 0, 0))
        salida = datetime.combine(res["fecha_salida"], time(11, 0, 0))

        if salida < inicio_rango or entrada > fin_rango:
            continue

        if inicio_rango <= entrada <= fin_rango:
            antes_checkin = entrada - timedelta(hours=random.randint(1, 4))
            antes_checkin = max(antes_checkin, datetime.combine(inicio_rango.date(), time(0, 0, 0)))
            eventos.append({
                "timestamp": antes_checkin.replace(microsecond=random.randint(1, 999999)),
                "status": "disponible",
                "id_habitacion": id_hab,
            })

            entrada_log = entrada + timedelta(minutes=random.randint(0, 30))
            eventos.append({
                "timestamp": entrada_log.replace(microsecond=random.randint(1, 999999)),
                "status": "ocupada",
                "id_habitacion": id_hab,
            })

        if inicio_rango <= salida <= fin_rango:
            salida_log = salida + timedelta(minutes=random.randint(0, 15))
            eventos.append({
                "timestamp": salida_log.replace(microsecond=random.randint(1, 999999)),
                "status": "ocupada",
                "id_habitacion": id_hab,
            })

            limpieza_log = salida_log + timedelta(hours=random.randint(1, 3))
            eventos.append({
                "timestamp": limpieza_log.replace(microsecond=random.randint(1, 999999)),
                "status": "limpieza",
                "id_habitacion": id_hab,
            })

            disponible_log = limpieza_log + timedelta(hours=random.randint(1, 4))
            eventos.append({
                "timestamp": disponible_log.replace(microsecond=random.randint(1, 999999)),
                "status": "disponible",
                "id_habitacion": id_hab,
            })

    habitacionesocupadas = set()
    for res in reservas:
        e = datetime.combine(res["fecha_entrada"], time(0, 0))
        s = datetime.combine(res["fecha_salida"], time(23, 59))
        if not (s < inicio_rango or e > fin_rango):
            habitacionesocupadas.add(res["id_habitacion"])

    habitaciones_libres = [h for h in habitaciones_ids if h not in habitacionesocupadas]
    n_mantenimiento = min(random.randint(3, 8), len(habitaciones_libres))
    for id_hab in random.sample(habitaciones_libres, n_mantenimiento):
        ts = inicio_rango + timedelta(
            days=random.randint(0, max(1, (fin_rango - inicio_rango).days)),
            hours=random.randint(6, 20),
            minutes=random.randint(0, 59),
        )
        ts = min(ts, datetime.combine(fin_rango.date(), time(23, 59)))
        eventos.append({
            "timestamp": ts.replace(microsecond=random.randint(1, 999999)),
            "status": "mantenimiento",
            "id_habitacion": id_hab,
        })

    eventos.sort(key=lambda e: e["timestamp"])
    return eventos


def insert_multi(tabla: str, columnas: list, filas: list) -> str:
    cols = ", ".join(columnas)
    vals = ",\n        ".join(f"({fila})" for fila in filas)
    return f"INSERT INTO {tabla} ({cols}) VALUES\n        {vals};\n"


def escribir_archivo_01(clientes, habitaciones, empleados):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "- CLIENTE -----------------------------\n"
    texto += insert_multi(
        "CLIENTE",
        ["id_cliente", "nombre", "correo", "telefono"],
        [f"{c['id']}, {sql_str(c['nombre'])}, {sql_str(c['correo'])}, {sql_str(c['telefono'])}" for c in clientes],
    )

    texto += "\n- HABITACION ----------------------------\n"
    texto += insert_multi(
        "HABITACION",
        ["id_habitacion", "tipo", "precio"],
        [f"{h['id']}, {sql_str(h['tipo'])}, {h['precio']:.2f}" for h in habitaciones],
    )

    texto += "\n- EMPLEADO -----------------------------\n"
    texto += insert_multi(
        "EMPLEADO",
        ["id_empleado", "nombre", "puesto"],
        [f"{e['id']}, {sql_str(e['nombre'])}, {sql_str(e['puesto'])}" for e in empleados],
    )

    return texto


def escribir_archivo_02(reservas):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "-- RESERVA -----------------------------\n"
    texto += insert_multi(
        "RESERVA",
        ["id_reserva", "fecha_entrada", "fecha_salida", "CLIENTE_id_cliente", "HABITACION_id_habitacion"],
        [
            f"{r['id']}, '{f_fecha(r['fecha_entrada'])}', '{f_fecha(r['fecha_salida'])}', "
            f"{r['id_cliente']}, {r['id_habitacion']}"
            for r in reservas
        ],
    )

    return texto


def escribir_archivo_03(logs):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "-- LOG_HABITACION  ----------------------\n"
    texto += insert_multi(
        "LOG_HABITACION",
        ["timestamp", "status", "HABITACION_id_habitacion"],
        [
            f"'{f_datetime(lg['timestamp'])}', {sql_str(lg['status'])}, {lg['id_habitacion']}"
            for lg in logs
        ],
    )

    return texto


def escribir_archivo_04(pagos):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "-- PAGO -------------------------------\n"
    texto += insert_multi(
        "PAGO",
        ["id_pago", "fecha_pago", "monto", "metodo_pago", "RESERVA_id_reserva", "EMPLEADO_id_empleado"],
        [
            f"{p['id']}, '{f_datetime(p['fecha_pago'])}', {p['monto']:.2f}, "
            f"{sql_str(p['metodo_pago'])}, {p['id_reserva']}, {p['id_empleado']}"
            for p in pagos
        ],
    )

    return texto


def escribir_archivo_05(logs):
    texto = ""
    texto += "\nUSE hotel_db;\n\n"

    texto += "-- LOG_HABITACION  ----------------------\n"
    texto += insert_multi(
        "LOG_HABITACION",
        ["timestamp", "status", "HABITACION_id_habitacion"],
        [
            f"'{f_datetime(lg['timestamp'])}', {sql_str(lg['status'])}, {lg['id_habitacion']}"
            for lg in logs
        ],
    )

    return texto


# GENERACION DE LOS ARCHIVO ---------------------------------------------------------------------------
def main():
    clientes     = generar_clientes()
    habitaciones = generar_habitaciones()
    empleados    = generar_empleados()

    reservas = generar_reservas()
    pagos    = generar_pagos(reservas, habitaciones, empleados)   

    fecha_logs_1_inicio = datetime.combine(BASE_DATE, time(0, 0, 0))
    fecha_logs_1_fin = fecha_logs_1_inicio + timedelta(days=7)
    logs_1 = generar_logs(reservas, habitaciones, fecha_logs_1_inicio, fecha_logs_1_fin)

    fecha_logs_2_inicio = fecha_logs_1_fin + timedelta(hours=1)
    fecha_logs_2_fin = fecha_logs_2_inicio + timedelta(days=7)
    logs_2 = generar_logs(reservas, habitaciones, fecha_logs_2_inicio, fecha_logs_2_fin)

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
