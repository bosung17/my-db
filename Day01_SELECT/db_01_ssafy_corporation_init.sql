DROP DATABASE IF EXISTS `SSAFY_CORPORATION`;

CREATE DATABASE `SSAFY_CORPORATION` DEFAULT CHARACTER SET utf8mb4;

USE SSAFY_CORPORATION;

CREATE TABLE IF NOT EXISTS `BONUS` ( 
`ENAME` varchar(10) DEFAULT NULL,
`JOB` varchar(9) DEFAULT NULL,
`SAL` double DEFAULT NULL,
`COMM` double DEFAULT NULL);

CREATE TABLE IF NOT EXISTS `DEPT` ( 
`DEPTNO` int NOT NULL,
`DNAME` varchar(14) DEFAULT NULL,
`LOC` varchar(13) DEFAULT NULL,
PRIMARY KEY (`DEPTNO`));

INSERT INTO `DEPT` (`DEPTNO`,`DNAME`,`LOC`)
VALUES(10, 'ACCOUNTING', 'NEW YORK'),
	  (20, 'RESEARCH', 'DALLAS'),
      (30, 'SALES', 'CHICAGO'),
      (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE IF NOT EXISTS `EMP` ( 
`EMPNO` int NOT NULL,
`ENAME` varchar(10) DEFAULT NULL,
`JOB` varchar(9) DEFAULT NULL,
`MGR` int DEFAULT NULL,
`HIREDATE` datetime DEFAULT NULL,
`SAL` double DEFAULT NULL,
`COMM` double DEFAULT NULL,
`DEPTNO` int DEFAULT NULL,
PRIMARY KEY (`EMPNO`),
KEY `PK_EMP` (`DEPTNO`));

INSERT INTO	`EMP` ( `EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`)
VALUES 
       (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17 00:00:00', 5000, NULL, 10),
       (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09 00:00:00', 2450, NULL, 10),
       (7934, 'MILLER', 'CLERK', 7782, '1982-01-23 00:00:00', 1300, NULL, 10),
       (7566, 'JONES', 'MANAGER', 7839, '1981-04-02 00:00:00', 2975, NULL, 20),
       (7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19 00:00:00', 3000, NULL, 20),
       (7876, 'ADAMS', 'CLERK', 7788, '1987-05-23 00:00:00', 1100, NULL, 20),
       (7902, 'FORD', 'ANALYST', 7566, '1981-12-03 00:00:00', 3000, NULL, 20),
       (7369, 'SMITH', 'CLERK', 7902, '1980-12-17 00:00:00', 800, NULL, 20),
       (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01 00:00:00', 2850, NULL, 30),
       (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20 00:00:00', 1600, 300, 30),
       (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22 00:00:00', 1250, 500, 30),
	(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28 00:00:00', 1250, 1400, 30),
       (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08 00:00:00', 1500, 0, 30),
       (7900, 'JAMES', 'CLERK', 7698, '1981-12-03 00:00:00', 950, NULL, 30);
       
       

CREATE TABLE IF NOT EXISTS `SALGRADE` (
    `GRADE` DOUBLE DEFAULT NULL,
    `LOSAL` DOUBLE DEFAULT NULL,
    `HISAL` DOUBLE DEFAULT NULL
);

INSERT INTO `SALGRADE` (`GRADE`, `LOSAL`, `HISAL`)
VALUES (1, 700, 1200),
       (2, 1201, 1400),
	(3, 1401, 2000),
       (4, 2001, 3000),
       (5, 3001, 9999);

ALTER TABLE `EMP` ADD CONSTRAINT `PK_EMP` FOREIGN KEY (`DEPTNO`) REFERENCES `DEPT` (`DEPTNO`) ON
DELETE SET NULL ON UPDATE CASCADE;
