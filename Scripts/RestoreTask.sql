--Jose Zapata

--**Before starting Create tail-log backup**
BACKUP LOG RestTest
TO DISK  ='C:\DBP_Backups\LogBackup_After_Error_T7'


--DELETE DATABASE then >
--1 Start from the last full backup
RESTORE DATABASE RestTest
 FROM DISK = 'C:\DBP_Backups\FullBackup' WITH NORECOVERY

--2 Restore Diffential Backup
RESTORE DATABASE RestTest
 FROM DISK = 'C:\DBP_Backups\DifferentialBackupT4' WITH NORECOVERY

--3 restore logs AFTER diffrential backup
RESTORE LOG RestTest
FROM DISK = 'C:\DBP_Backups\LogBackupT5' WITH NORECOVERY

RESTORE LOG RestTest
FROM DISK = 'C:\DBP_Backups\LogBackupT6' WITH NORECOVERY

RESTORE LOG RestTest
FROM DISK = 'C:\DBP_Backups\LogBackup_After_Error_T7' WITH NORECOVERY

--4  complete the sequence with a recovery from the current log
RESTORE DATABASE RestTest WITH RECOVERY



