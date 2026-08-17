# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#260815 22:51:48 server id 1  end_log_pos 126 CRC32 0x83472558 	Start: binlog v 4, server v 8.0.46 created 260815 22:51:48
# Warning: this binlog is either in use or was not closed properly.
BINLOG '
5EGBag8BAAAAegAAAH4AAAABAAQAOC4wLjQ2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAVglR4M=
'/*!*/;
# at 126
#260815 22:51:48 server id 1  end_log_pos 157 CRC32 0x0cd70394 	Previous-GTIDs
# [empty]
# at 157
#260816  0:15:18 server id 1  end_log_pos 236 CRC32 0x06164af7 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1786860918812020	immediate_commit_timestamp=1786860918812020	transaction_length=1486
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1786860918812020 (2026-08-16 00:15:18.812020 CST)
# immediate_commit_timestamp=1786860918812020 (2026-08-16 00:15:18.812020 CST)
/*!80001 SET @@session.original_commit_timestamp=1786860918812020*//*!*/;
/*!80014 SET @@session.original_server_version=80046*//*!*/;
/*!80014 SET @@session.immediate_server_version=80046*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#260816  0:15:18 server id 1  end_log_pos 323 CRC32 0xa0909718 	Query	thread_id=23	exec_time=0	error_code=0
SET TIMESTAMP=1786860918/*!*/;
SET @@session.pseudo_thread_id=23/*!*/;
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
#260816  0:15:18 server id 1  end_log_pos 397 CRC32 0x6819d905 	Table_map: `hotel_db`.`LOG_HABITACION` mapped to number 97
# has_generated_invisible_primary_key=0
# at 397
#260816  0:15:18 server id 1  end_log_pos 1612 CRC32 0xc1a8c4de 	Write_rows: table id 97 flags: STMT_END_F

BINLOG '
dlWBahMBAAAASgAAAI0BAAAAAGEAAAAAAAEACGhvdGVsX2RiAA5MT0dfSEFCSVRBQ0lPTgADEg8D
AwZ4AAABAQACA/z/AAXZGWg=
dlWBah4BAAAAvwQAAEwGAAAAAGEAAAAAAAEAAgAD/wCZuiAypgm3SgpkaXNwb25pYmxlMgAAAACZ
uiBXbQO3VQpkaXNwb25pYmxlFAAAAACZuiCzawm4lwhsaW1waWV6YS4AAAAAmbog1JUFgxkHb2N1
cGFkYQcAAAAAmbohE0QPHmMKZGlzcG9uaWJsZSUAAAAAmbohKOcGtsYNbWFudGVuaW1pZW50bwUA
AAAAmboiBEAG6pkIbGltcGllemEgAAAAAJm6IhsYAdO1CGxpbXBpZXphLgAAAACZuiJC4w2RVg1t
YW50ZW5pbWllbnRvKAAAAACZuiKgRgW/NghsaW1waWV6YS8AAAAAmboi9JsEHZQHb2N1cGFkYQYA
AAAAmbojM7cIBHIIbGltcGllemElAAAAAJm6JA5TDWZUCmRpc3BvbmlibGUgAAAAAJm6JEIzAYjs
DW1hbnRlbmltaWVudG8RAAAAAJm6JHavCxLGDW1hbnRlbmltaWVudG8kAAAAAJm6JI77DHFyB29j
dXBhZGEvAAAAAJm6JNfjCVCkB29jdXBhZGEtAAAAAJm6JSNVAejMCGxpbXBpZXphAgAAAACZuiU3
4whhOgdvY3VwYWRhFAAAAACZuiYNxgH6AQ1tYW50ZW5pbWllbnRvHAAAAACZuiZkHA045ghsaW1w
aWV6YRIAAAAAmbommCoPJxsHb2N1cGFkYRUAAAAAmbomtREPG6cHb2N1cGFkYQ0AAAAAmbom4fAE
RfINbWFudGVuaW1pZW50bwcAAAAAmbonBoIKDB4Hb2N1cGFkYRQAAAAAmbonIuQMEpoNbWFudGVu
aW1pZW50bwMAAAAAmbonO7cH+PoHb2N1cGFkYSkAAAAAmbonfXIIKzgNbWFudGVuaW1pZW50bx8A
AAAAmbooRYsLHmAKZGlzcG9uaWJsZREAAAAAmbooh4MMKgYIbGltcGllemEgAAAAAJm6KKGsB+N7
CmRpc3BvbmlibGUKAAAAAJm6KM6VB9DaDW1hbnRlbmltaWVudG8GAAAAAJm6KPF5BMnECGxpbXBp
ZXphJwAAAACZuilOJAhmLwhsaW1waWV6YR0AAAAAmboqFCACjokIbGltcGllemEUAAAAAJm6Km3j
DE+WCmRpc3BvbmlibGUxAAAAAJm6KpjxAUlUCmRpc3BvbmlibGULAAAAAJm6KrvYAnzMB29jdXBh
ZGEBAAAAAJm6KwQIC/0NCGxpbXBpZXphEwAAAACZuisXmwgKfg1tYW50ZW5pbWllbnRvLQAAAACZ
uitYygvGmQ1tYW50ZW5pbWllbnRvKQAAAACZuiw0ggt0qAdvY3VwYWRhHAAAAACZuixNEQaPHwdv
Y3VwYWRhEgAAAACZuixuFAk2vg1tYW50ZW5pbWllbnRvJwAAAACZuizNpwD7RApkaXNwb25pYmxl
HgAAAACZui0JxQDOOA1tYW50ZW5pbWllbnRvIQAAAACZui1ioQIXtgpkaXNwb25pYmxlHAAAAACZ
ui4cMQKBqApkaXNwb25pYmxlDwAAAACZui52cg6+Hg1tYW50ZW5pbWllbnRvJQAAAACZui6TpwJJ
cwhsaW1waWV6YSIAAADexKjB
'/*!*/;
# at 1612
#260816  0:15:18 server id 1  end_log_pos 1643 CRC32 0xcf20a513 	Xid = 578
COMMIT/*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
