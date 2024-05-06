MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| asfa               |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.044 sec)

MariaDB [(none)]> create database Restapi;
Query OK, 1 row affected (0.003 sec)

MariaDB [(none)]> use Restapi;
Database changed
MariaDB [Restapi]> show databases;
ERROR 2006 (HY000): MySQL server has gone away
No connection. Trying to reconnect...
Connection id:    8
Current database: Restapi

+--------------------+
| Database           |
+--------------------+
| asfa               |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| restapi            |
| test               |
+--------------------+
7 rows in set (0.006 sec)

MariaDB [Restapi]> use Restapi;
Database changed
MariaDB [Restapi]> show tables;
+-------------------+
| Tables_in_restapi |
+-------------------+
| department        |
+-------------------+
1 row in set (0.001 sec)

MariaDB [Restapi]> desc department;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | NO   | PRI | NULL    |       |
| faculty | varchar(255) | NO   |     | NULL    |       |
| name    | varchar(255) | NO   |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
3 rows in set (0.042 sec)

MariaDB [Restapi]> insert into department values(103,'FAS','Physical Science');
Query OK, 1 row affected (0.065 sec)

MariaDB [Restapi]> insert into department values(104,'FAS','Bio Science');
Query OK, 1 row affected (0.009 sec)

MariaDB [Restapi]> select * from department;
+-----+---------+------------------+
| id  | faculty | name             |
+-----+---------+------------------+
| 103 | FAS     | Physical Science |
| 104 | FAS     | Bio Science      |
+-----+---------+------------------+
2 rows in set (0.002 sec)

MariaDB [Restapi]> show tables;
+-------------------+
| Tables_in_restapi |
+-------------------+
| department        |
| project           |
+-------------------+
2 rows in set (0.001 sec)

MariaDB [Restapi]> desc projects;
ERROR 1146 (42S02): Table 'restapi.projects' doesn't exist
MariaDB [Restapi]> desc project;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id         | varchar(255) | NO   | PRI | NULL    |       |
| name       | varchar(255) | YES  |     | NULL    |       |
| started_on | date         | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
3 rows in set (0.029 sec)

MariaDB [Restapi]> insert into project values('AHEAD01','IoT Lab',''1/1/2023);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1/1/2023)' at line 1
MariaDB [Restapi]> insert into project values('AHEAD01','IoT Lab','1/1/2023');
Query OK, 1 row affected, 1 warning (0.008 sec)

MariaDB [Restapi]> insert into project values('AHEAD02','High Performance Computers','2/1/2023');
Query OK, 1 row affected, 1 warning (0.009 sec)

MariaDB [Restapi]> select * from project;
+---------+----------------------------+------------+
| id      | name                       | started_on |
+---------+----------------------------+------------+
| AHEAD01 | IoT Lab                    | 0000-00-00 |
| AHEAD02 | High Performance Computers | 0000-00-00 |
+---------+----------------------------+------------+
2 rows in set (0.001 sec)

MariaDB [Restapi]> delete from project;
Query OK, 2 rows affected (0.008 sec)

MariaDB [Restapi]> insert into project values('AHEAD01','IoT Lab','2023-01-01');
Query OK, 1 row affected (0.008 sec)

MariaDB [Restapi]> insert into project values('AHEAD02','High Performance Computers','2023-01-12');
Query OK, 1 row affected (0.010 sec)

MariaDB [Restapi]> select * from project;
+---------+----------------------------+------------+
| id      | name                       | started_on |
+---------+----------------------------+------------+
| AHEAD01 | IoT Lab                    | 2023-01-01 |
| AHEAD02 | High Performance Computers | 2023-01-12 |
+---------+----------------------------+------------+
2 rows in set (0.002 sec)

MariaDB [Restapi]> select * from department;
+-----+---------+--------------------+
| id  | faculty | name               |
+-----+---------+--------------------+
| 103 | FAS     | Physical Science   |
| 104 | FAS     | Bio Science        |
| 105 | FBS     | Project Management |
| 106 | FBS     | HR Management      |
+-----+---------+--------------------+
4 rows in set (0.001 sec)

MariaDB [Restapi]> --after post operation
MariaDB [Restapi]> --after put operation
MariaDB [Restapi]> select * from department;
+-----+---------+----------------------------+
| id  | faculty | name                       |
+-----+---------+----------------------------+
| 103 | FAS     | Physical Science           |
| 104 | FAS     | Bio Science                |
| 105 | FBS     | Project Management         |
| 106 | FBS     | Human Resources Management |
+-----+---------+----------------------------+
4 rows in set (0.001 sec)

MariaDB [Restapi]> --adding a data to try the delete operation
MariaDB [Restapi]> select * from department;
+-----+---------+----------------------------+
| id  | faculty | name                       |
+-----+---------+----------------------------+
| 103 | FAS     | Physical Science           |
| 104 | FAS     | Bio Science                |
| 105 | FBS     | Project Management         |
| 106 | FBS     | Human Resources Management |
| 107 | FTS     | Technological Studies      |
+-----+---------+----------------------------+
5 rows in set (0.001 sec)

MariaDB [Restapi]> select * from department;
+-----+---------+----------------------------+
| id  | faculty | name                       |
+-----+---------+----------------------------+
| 103 | FAS     | Physical Science           |
| 104 | FAS     | Bio Science                |
| 105 | FBS     | Project Management         |
| 106 | FBS     | Human Resources Management |
+-----+---------+----------------------------+
4 rows in set (0.001 sec)

MariaDB [Restapi]> select * from department;
+-----+---------+--------------------+
| id  | faculty | name               |
+-----+---------+--------------------+
| 103 | FAS     | Physical Science   |
| 104 | FAS     | Bio Science        |
| 105 | FBS     | Project Management |
| 106 | FBS     | HR Management      |
+-----+---------+--------------------+
4 rows in set (0.001 sec)

MariaDB [Restapi]> --now lets try with the project table
MariaDB [Restapi]> select * from project;
+---------+----------------------------+------------+
| id      | name                       | started_on |
+---------+----------------------------+------------+
| AHEAD01 | IoT Lab                    | 2023-01-01 |
| AHEAD02 | High Performance Computers | 2023-01-12 |
+---------+----------------------------+------------+
2 rows in set (0.001 sec)

MariaDB [Restapi]> --insert
MariaDB [Restapi]> select * from project;
+---------+----------------------------+------------+
| id      | name                       | started_on |
+---------+----------------------------+------------+
| AHEAD01 | IoT Lab                    | 2023-01-01 |
| AHEAD02 | High Performance Computers | 2023-01-12 |
| AHEAD03 | Smart Computer Lab         | 2023-06-20 |
+---------+----------------------------+------------+
3 rows in set (0.001 sec)

MariaDB [Restapi]> select * from project;
+---------+----------------------------+------------+
| id      | name                       | started_on |
+---------+----------------------------+------------+
| AHEAD01 | IoT Lab                    | 2023-01-01 |
| AHEAD02 | High Performance Computers | 2023-01-12 |
| AHEAD03 | Smart Computer Lab         | 2023-06-20 |
| AHEAD04 | Electronics Lab            | 2022-08-30 |
+---------+----------------------------+------------+
4 rows in set (0.001 sec)

MariaDB [Restapi]> --update--put
MariaDB [Restapi]> select * from project;
+---------+----------------------------+------------+
| id      | name                       | started_on |
+---------+----------------------------+------------+
| AHEAD01 | IoT Lab                    | 2023-01-01 |
| AHEAD02 | High Performance Computers | 2023-01-12 |
| AHEAD03 | Smart Computer Lab         | 2023-06-20 |
| AHEAD04 | Electronics Practice Lab   | 2022-08-30 |
+---------+----------------------------+------------+
4 rows in set (0.001 sec)

MariaDB [Restapi]> exit
