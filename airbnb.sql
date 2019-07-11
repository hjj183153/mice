#Airbnb SQL

SET NAMES UTF8;
DROP DATABASE IF EXISTS Airbnb;
CREATE DATABASE Airbnb CHARSET = UTF8;
USE Airbnb;
#城市表
CREATE TABLE Airbnb_City(
 City_id INT PRIMARY KEY AUTO_INCREMENT,
 City_name VARCHAR(64) UNIQUE,
 City_rank INT,
 City_concern INT
);
INSERT INTO Airbnb_Carousel VALUES(1,'北京',1,null)
#房屋时间表
CREATE TABLE Airbnb_House_Time(
 Time_id INT PRIMARY KEY AUTO_INCREMENT,
 Time_House_id INT,
 Time_start BIGINT,
 Time_end BIGINT
);
#房屋图片表
CREATE TABLE Airbnb_House_Img(
 HouseImg_id INT PRIMARY KEY AUTO_INCREMENT,
 HouseImg_House_id INT,
 HouseImg_sm VARCHAR(128),
 HouseImg_md VARCHAR(128),
 HouseImg_lg VARCHAR(128)
);
#便利设施表
CREATE TABLE Airbnb_House_Amenities(
 HouseAmenities_id INT PRIMARY KEY AUTO_INCREMENT,
 HouseAmenities_name VARCHAR(64)
);
#设施表
CREATE TABLE Airbnb_Amenities(
 Amenities_id INT PRIMARY KEY AUTO_INCREMENT,
 Amenities_name VARCHAR(64)
);
#建筑类型表
CREATE TABLE Airbnb_Building(
 Building_id INT PRIMARY KEY AUTO_INCREMENT,
 Building_name VARCHAR(64)
);
#床铺表
CREATE TABLE Airbnb_House_Bed(
 HouseBed_id INT PRIMARY KEY AUTO_INCREMENT,
 HouseBed_name VARCHAR(64)
);
#房屋表
CREATE TABLE Airbnb_House(
 House_id INT PRIMARY KEY AUTO_INCREMENT,
 House_City_id INT,
 House_name VARCHAR(128),
 House_User_id INT,
 House_longitude INT,
 House_latitude INT,
 House_people_num INT,
 House_type VARCHAR(64),
 House_price INT,
 House_tag VARCHAR(64),
 House_bednum INT,
 House_Bed VARCHAR(128),
 House_restroom INT,
 House_HouseAmenities VARCHAR(128),
 House_Amenities VARCHAR(64),
 House_Building VARCHAR(64),
 House_detail VARCHAR(256),
 House_address VARCHAR(128),
 House_trip VARCHAR(128),
 House_label VARCHAR(64)
);
#轮播图表
CREATE TABLE Airbnb_Carousel(
 Carousel_id INT PRIMARY KEY AUTO_INCREMENT,
 Carousel_imgurl VARCHAR(128)
);
