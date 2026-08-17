# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#260816  2:28:09 server id 1  end_log_pos 126 CRC32 0xe7e2da74 	Start: binlog v 4, server v 8.0.46 created 260816  2:28:09
# Warning: this binlog is either in use or was not closed properly.
BINLOG '
mXSBag8BAAAAegAAAH4AAAABAAQAOC4wLjQ2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAXTa4uc=
'/*!*/;
# at 126
#260816  2:28:09 server id 1  end_log_pos 157 CRC32 0x69a82870 	Previous-GTIDs
# [empty]
# at 157
#260816 10:26:14 server id 1  end_log_pos 236 CRC32 0xa5b2d1c2 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1786897574518118	immediate_commit_timestamp=1786897574518118	transaction_length=1475
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1786897574518118 (2026-08-16 10:26:14.518118 CST)
# immediate_commit_timestamp=1786897574518118 (2026-08-16 10:26:14.518118 CST)
/*!80001 SET @@session.original_commit_timestamp=1786897574518118*//*!*/;
/*!80014 SET @@session.original_server_version=80046*//*!*/;
/*!80014 SET @@session.immediate_server_version=80046*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#260816 10:26:14 server id 1  end_log_pos 323 CRC32 0x4b380e52 	Query	thread_id=36	exec_time=0	error_code=0
SET TIMESTAMP=1786897574/*!*/;
SET @@session.pseudo_thread_id=36/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=255/*!*/;
SET @@session.time_zone='SYSTEM'/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 323
#260816 10:26:14 server id 1  end_log_pos 397 CRC32 0x013316e0 	Table_map: `hotel_db`.`LOG_HABITACION` mapped to number 97
# has_generated_invisible_primary_key=0
# at 397
#260816 10:26:14 server id 1  end_log_pos 1601 CRC32 0xd966307a 	Write_rows: table id 97 flags: STMT_END_F

BINLOG '
puSBahMBAAAASgAAAI0BAAAAAGEAAAAAAAEACGhvdGVsX2RiAA5MT0dfSEFCSVRBQ0lPTgADEg8D
AwZ4AAABAQACA/z/AOAWMwE=
puSBah4BAAAAtAQAAEEGAAAAAGEAAAAAAAEAAgAD/wCZui7zOAUw1QhsaW1waWV6YSkAAAAAmbov
NJoKwhUIbGltcGllemEWAAAAAJm6L3AhCTkcB29jdXBhZGEWAAAAAJm6MDtEDdWnCGxpbXBpZXph
MQAAAACZujCL4Q8+WQ1tYW50ZW5pbWllbnRvEQAAAACZujC91wZzmgpkaXNwb25pYmxlKwAAAACZ
ujEWMQdRoAdvY3VwYWRhIgAAAACZujFRJgAJNAhsaW1waWV6YTEAAAAAmboxZHcI0s8Hb2N1cGFk
YRMAAAAAmboyM6gBUfEKZGlzcG9uaWJsZQIAAAAAmboykXcMrTcHb2N1cGFkYRQAAAAAmboy4Z8D
8hkKZGlzcG9uaWJsZQ8AAAAAmboy+OYOTx4Hb2N1cGFkYSAAAAAAmbozMhgDbNEIbGltcGllemEf
AAAAAJm6M3X1DD7NB29jdXBhZGEZAAAAAJm6NCWgBR5PB29jdXBhZGEFAAAAAJm6NGMXA4e8CGxp
bXBpZXphFgAAAACZujS3jwOSPg1tYW50ZW5pbWllbnRvLwAAAACZujT19AzZnAhsaW1waWV6YQoA
AAAAmbo1PpcDHP0NbWFudGVuaW1pZW50byQAAAAAmbo2FbUCx7QNbWFudGVuaW1pZW50bw0AAAAA
mbo2PtEGhGAIbGltcGllemEDAAAAAJm6NnuwAoq+CGxpbXBpZXphGQAAAACZujakcgSP2Q1tYW50
ZW5pbWllbnRvBwAAAACZujbmGAPexQhsaW1waWV6YQEAAAAAmbo3DNMOWMEHb2N1cGFkYQUAAAAA
mbo3WmQEgUEIbGltcGllemEqAAAAAJm6N3j6AuIyCGxpbXBpZXphFQAAAACZujhH4AN1PQpkaXNw
b25pYmxlEAAAAACZujh7kwTnbwhsaW1waWV6YQcAAAAAmbo4k54Av9ANbWFudGVuaW1pZW50bwIA
AAAAmbo4qNQBpa4NbWFudGVuaW1pZW50bxcAAAAAmbo44J0FjeoIbGltcGllemElAAAAAJm6OQMo
BtFfCGxpbXBpZXphKAAAAACZujkrJwDjvAdvY3VwYWRhDwAAAACZujl2Nwg+Iw1tYW50ZW5pbWll
bnRvKwAAAACZujoVrwBtkQ1tYW50ZW5pbWllbnRvLAAAAACZujpoMwd+5Q1tYW50ZW5pbWllbnRv
JgAAAACZujqjUwNILA1tYW50ZW5pbWllbnRvHgAAAACZujrWbAGtMAhsaW1waWV6YQcAAAAAmbo6
/JQHa3wNbWFudGVuaW1pZW50by0AAAAAmbo7LQ4CsVgIbGltcGllemESAAAAAJm6O0dJDaphCmRp
c3BvbmlibGUnAAAAAJm6PBXHDNqNDW1hbnRlbmltaWVudG8yAAAAAJm6PEB7AztpB29jdXBhZGEp
AAAAAJm6PGpPDhOJB29jdXBhZGEpAAAAAJm6PIm4CSizCmRpc3BvbmlibGUUAAAAAJm6PMphDv8s
B29jdXBhZGEGAAAAAJm6PQCVBmLTB29jdXBhZGENAAAAAJm6PS04BSaPDW1hbnRlbmltaWVudG8i
AAAAejBm2Q==
'/*!*/;
# at 1601
#260816 10:26:14 server id 1  end_log_pos 1632 CRC32 0xf62ac971 	Xid = 1320
COMMIT/*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
