/*设置客户端连接密码*/
SET NAMES UTF8;
/*丢弃数据库*/
DROP DATABASE IF EXISTS MS;
/*创建数据库*/
CREATE DATABASE MS CHARSET=UTF8;
/*进入该数据库*/
USE MS;
/*1用户信息表*/
CREATE TABLE MS_USER(
    /*用户id*/
    UID INT PRIMARY KEY AUTO_INCREMENT,
    /*用户名称*/
    UNAME VARCHAR(15),
    /*用户密码*/
    UPWD VARCHAR(15),
    /*用户邮箱*/
    EMAIL VARCHAR(30),
    /*用户手机号*/
    PHONE VARCHAR(12)NOT NULL UNIQUE,
    /*姓名*/
    USER_NAME VARCHAR(50),
    /*性别 男1 女0*/
    SIX INT,
    /*注册时间*/
    REG_TIME DATETIME,
);