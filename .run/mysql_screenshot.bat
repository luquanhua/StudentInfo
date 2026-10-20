@echo off
chcp 65001 >nul
title MySQL 8.0 - student_db - student
mode con: cols=120 lines=30
set MYSQL_PWD=123456
"D:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -uroot -h127.0.0.1 --default-character-set=utf8mb4 --table student_db
