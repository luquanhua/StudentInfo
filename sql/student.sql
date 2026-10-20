-- 学生信息查询作业数据库脚本
-- MySQL 8.0，本地 root 用户

CREATE DATABASE IF NOT EXISTS student_db
    DEFAULT CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;

USE student_db;

DROP TABLE IF EXISTS student;

CREATE TABLE student (
    id         INT          NOT NULL AUTO_INCREMENT COMMENT '主键',
    student_no VARCHAR(20)  NOT NULL COMMENT '学号',
    name       VARCHAR(50)  NOT NULL COMMENT '姓名',
    gender     VARCHAR(10)  DEFAULT NULL COMMENT '性别',
    age        INT          DEFAULT NULL COMMENT '年龄',
    major      VARCHAR(100) DEFAULT NULL COMMENT '专业',
    class_name VARCHAR(50)  DEFAULT NULL COMMENT '班级',
    PRIMARY KEY (id),
    UNIQUE KEY uk_student_no (student_no)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COMMENT = '学生信息表';

INSERT INTO student (id, student_no, name, gender, age, major, class_name)
VALUES (1, '2023001', '张三', '男', 20, '软件工程', '软件2301'),
       (2, '2023002', '李四', '女', 19, '计算机科学与技术', '计科2302'),
       (3, '2023003', '王五', '男', 21, '软件工程', '软件2301'),
       (4, '2023004', '赵六', '女', 20, '网络工程', '网络2301'),
       (5, '2023005', '孙七', '男', 22, '人工智能', '智能2301');

SELECT * FROM student ORDER BY id;
