--Jose Zapata 

--4. create table
CREATE TABLE Test
(
 id INT NOT NULL PRIMARY KEY,
 name VARCHAR(20) NOT NULL
) 

--5.full backup
BACKUP DATABASE RestTest
TO DISK ='C:\DBP_Backups\backup-files\FullBackup'

--6. insert 2 rows
INSERT INTO Test(id,name) VALUES (1,'insert 1');
INSERT INTO Test(id,name) VALUES (2,'insert 2');

--7. backup log
BACKUP LOG RestTest
TO DISK  ='C:\DBP_Backups\backup-files\LogBackupT2'

--8 Insert 2 rows
INSERT INTO Test(id,name) VALUES (3,'insert 3');
INSERT INTO Test(id,name) VALUES (4,'insert 4');

--9. backup log
BACKUP LOG RestTest
TO DISK  ='C:\DBP_Backups\backup-files\LogBackupT3'

--10 Insert 2 rows
INSERT INTO Test(id,name) VALUES (5,'insert 5');
INSERT INTO Test(id,name) VALUES (6,'insert 6');

--11 Differential Backup
BACKUP DATABASE RestTest
TO DISK ='C:\DBP_Backups\backup-files\DifferentialBackupT4' WITH DIFFERENTIAL

--12 insert 2 rows
INSERT INTO Test(id,name) VALUES (7,'insert 7');
INSERT INTO Test(id,name) VALUES (8,'insert 8');

--13 backup log
BACKUP LOG RestTest
TO DISK  ='C:\DBP_Backups\backup-files\LogBackupT5'

--14 insert 1 row
INSERT INTO Test(id,name) VALUES (9,'insert 9');

--15 backup log
BACKUP LOG RestTest
TO DISK  ='C:\DBP_Backups\backup-files\LogBackupT6'

--16 insert 1 row
INSERT INTO Test(id,name) VALUES (10,'insert 10');












