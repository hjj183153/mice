#Airbnb SQL

SET NAMES UTF8;
DROP DATABASE IF EXISTS Airbnb;
CREATE DATABASE Airbnb CHARSET = UTF8;
USE Airbnb;
#城市表
CREATE TABLE Airbnb_City(
 City_id INT PRIMARY KEY AUTO_INCREMENT,
 City_name VARCHAR(64) UNIQUE
);

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
 House_City_id INT,#城市id
 House_District_id INT,#区域id
 House_name VARCHAR(128),#房屋名
 House_User_id INT,#用户id
 House_longitude VARCHAR(64),#经度
 House_latitude VARCHAR(64),#纬度
 House_people_num INT,#可住人数
 House_type VARCHAR(64),#房源类型    
 House_price INT,#价格
 House_tag VARCHAR(64),#标签
 House_bednum INT,#床铺数量
 House_Bed VARCHAR(128),#床类型
 House_restroom INT,#卫生间数量
 House_HouseAmenities VARCHAR(128),#便利设施
 #添加新的字段
 House_Aimg VARCHAR(10000), #便利设施图片
 House_Amenities VARCHAR(64),#设施
 House_Building VARCHAR(64),#建筑类型Airbnb_housingResources_Type
 House_detail VARCHAR(256),#详情
 House_address VARCHAR(128),#详细地址
 House_number VARCHAR(128),#地址门牌号
 House_trip VARCHAR(128),#出行信息
 House_label VARCHAR(64),#标签信息
 House_imgurl VARCHAR(128),#缩略图
 #添加新的字段
 House_message VARCHAR(128),#房屋规则信息标题
 House_rool VARCHAR(256) #房屋规则信息内容

);

#轮播图表liupan
CREATE TABLE Airbnb_Carousel(
 Carousel_id INT PRIMARY KEY AUTO_INCREMENT,
 Carousel_imgurl VARCHAR(128)
);
INSERT INTO Airbnb_Carousel VALUES(null,"carousel1.jpg");
INSERT INTO Airbnb_Carousel VALUES(null,"carousel2.jpg");
INSERT INTO Airbnb_Carousel VALUES(null,"carousel3.jpg");

#房源类型表 zm
CREATE TABLE Airbnb_housingResources_Type(
 housingResources_id INT PRIMARY KEY AUTO_INCREMENT,
 housingResources_name VARCHAR(64)
);
#出租类型表 zm
CREATE TABLE Airbnb_Rent_Type(
 Rent_id INT PRIMARY KEY AUTO_INCREMENT,
 Rent_name VARCHAR(64),
 Rent_about VARCHAR(64)
);
#房源类型表数据 zm
INSERT INTO Airbnb_housingResources_Type VALUES(NULL,'公寓型住宅'),
(NULL,'独栋房'),(NULL,'别墅'),(NULL,'Loft'),(NULL,'酒店'),(NULL,'酒店式公寓'),(NULL,'精品酒店'),(NULL,'青年旅舍'),(NULL,'农家乐'),(NULL,'度假村'),(NULL,'乡村小屋'),(NULL,'蒙古包'),(NULL,'平房'),(NULL,'联排别墅'),(NULL,'木屋'),(NULL,'露营车/房车'),(NULL,'帐篷'),(NULL,'露营地'),(NULL,'树屋'),(NULL,'船屋'),(NULL,'茅屋'),(NULL,'冰屋'),(NULL,'城堡'),(NULL,'风车房'),(NULL,'灯塔'),(NULL,'巴士'),(NULL,'火车'),(NULL,'飞机');
#出租类型表数据 zm
INSERT INTO Airbnb_Rent_Type VALUES
(NULL,'整个房源','房客独享整个房源，无需与您或他人共住'),
(NULL,'独立房间','房客有自己的独立房间，与他人共享客厅等空间'),
(NULL,'合住房间','房客住在与他人合用的卧室或公共区域');


#airbnb_house表添加数据
#房屋表数据
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index1.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');
INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_trip`, `House_label`,`House_imgurl`) VALUES (NULL, '2', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', '1', '1231321', '12313213', '3', '独立房间', '3000', '9折', '2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', 'null', 'null','/img-index/index2.jpg');



#个人信息表 gyh
CREATE TABLE Airbnb_user(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(64) UNIQUE,
    user_pwd VARCHAR(64),
    user_email VARCHAR(64),
    user_phone VARCHAR(32) NOT NULL,
    user_gender INT,
    user_reg_time DATETIME,
    user_login_time DATETIME,
    user_imgurl VARCHAR(128)
);
#个人信息数据 gyh
INSERT INTO Airbnb_user VALUES(NULL,"迪丽热巴","reba","reba@163.com",15660902590,0,'2018/1/1','2018/1/2','img/user/reba.jpeg');
INSERT INTO Airbnb_user VALUES(NULL,"高圆圆","gaoyuanyuan","gaoyuanyuan@163.com",15660902591,0,'2018/1/3','2018/1/4','img/user/gaoyuanyuan.jpg');
INSERT INTO Airbnb_user VALUES(NULL,"杨幂","yangmi","yangmi@163.com",15660902592,0,'2018/1/5','2018/1/6','img/user/yangmi.jpeg');
INSERT INTO Airbnb_user VALUES(NULL,"赵丽颖","zhaoliying","zhaoliying@163.com",15660902593,0,'2018/1/7','2018/1/8','img/user/zhaoliying.jpeg');
INSERT INTO Airbnb_user VALUES(NULL,"郑凯","zhengkai","zhengkai@163.com",15660902594,1,'2018/1/9','2018/1/10','img/user/zhengkai.jpeg');
 #房屋图片数据
 INSERT INTO `airbnb_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES ('001', '1', NULL, 'https://z1.muscache.cn/im/pictures/f4043af9-eacb-47c2-b350-d6ad0e8e419b.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/f3e442f6-f07a-4a8e-a5c4-7b5d7495df0b.jpg?aki_policy=xx_large');
 INSERT INTO `airbnb_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES ('002', '1', NULL, 'https://z1.muscache.cn/im/pictures/79c0a62a-72b4-4587-a556-a600ca25b0ec.jpg?aki_policy=large', NULL);
INSERT INTO `airbnb_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES ('003', '1', NULL, 'https://z1.muscache.cn/im/pictures/a96de13b-5497-4361-82ff-c653cf181036.jpg?aki_policy=large', NULL);
INSERT INTO `airbnb_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES ('004', '1', NULL, 'https://z1.muscache.cn/im/pictures/51e269e5-e80d-4ab6-8581-635714422640.jpg?aki_policy=large', NULL);

CREATE TABLE Airbnb_story(
  stid INT PRIMARY KEY AUTO_INCREMENT,/*#每个故事的id*/
  family_id INT,/*#和story_family中fid连接*/
  user_id INT,/*#用户id*/
  user_name VARCHAR(30),
  user_img VARCHAR(200),#用户头像
  md_img VARCHAR(200),
  city VARCHAR(50),
  give_like INT,/*--点赞*/
  give_comment INT,/*--评论*/
  detail_top_title VARCHAR(1000),#故事集中图片中的标题
  detail_title VARCHAR(1000),/*--文章简介标题,也是详情页的标题*/
  detail_intr VARCHAR(10000)/*--文章简介正文*/
);
INSERT INTO Airbnb_story VALUES(NULL,1,1,"Kiki","img/story/user_img_1.jpg","img/story/bg_img1_1.jpg","北京",0,0,"走进三里屯东三街的Róng Bar，一派复古的装饰。坐在舒适的露台点一杯「青梅煮酒」，论英雄何人，适合向往度假、寻求惬意的你！","将海鲜做到极致的大叔居酒屋","酒肴一瓢，主打日式海鲜料理，素净的木招牌在霄云路美食后街上众多日料店之中并不显眼。北京大叔的真性情酒肴一瓢的老板是位北京大叔，浑身透着北京人的健谈，今天最新鲜的海产是什么，值得一试的是什么，自进门起老板就热络招呼。对待食物老板又有着近乎严苛的匠人精神，每天只挑最新鲜的海产，严格把控上菜时间和顺序，在细节上绝不马虎。日式海鲜的一万种可能性,在酒肴一瓢，除了当日最新鲜的鱼生刺身，酒蒸、串烧、火锅，海产的可能性多到超乎想象。活章鱼七味烧，新鲜活章鱼去皮剔筋，客人自行在炭炉上烤制，边烤边吃，保证最新鲜的口感。活牡蛎炮烙，手掌大的牡蛎撒盐烤制，新鲜的牡蛎肉质厚实，入口微甜，对贝类无感的我都被征服了。滑蛋青蛤，不太常见的做法，鸡蛋将蛤蜊的鲜味提升了一个层次。老板总说自己的餐厅无非是一间大叔店罢了，登不上台面。在我看来，抱有如此热情和心思对待料理，才是食客们的宝藏之地。地址：朝阳区霄云路15号霄云美食街后街24门");
INSERT INTO Airbnb_story VALUES(NULL,1,2,"Yummy","img/story/user_img_2.jpg","img/story/bg_img1_2.jpg","花莲",0,0,"走进亮马桥附近的Bar Ichikura，这里是日式的清吧。安静的氛围、安静的点一杯威士忌，适合既害怕寂寞又害怕热闹的你！","超级赞的民宿","台湾之旅结束快一年了 都没给暖心的房东评价 失职啊～房东姐姐跟公公婆婆打理的名宿 家很大还有一个巨大的院子 很漂亮 巨感觉 也很干净 依旧记得早上阳台望出去的美景和家里好多条狗狗 学建筑的同事也对房东姐姐的这家10多年的民宿赞叹不已 早上还有房东姐姐跟婆婆准备的暖心早餐 超级丰盛 一家人都很好说话 家里因为公公婆婆喜欢唱歌有成套的设备 超级赞～感谢姐姐当年帮我提箱子到楼上 小小的力气超大～有机会一定还要来打扰❤️ miss u 祝一切安好");
INSERT INTO Airbnb_story VALUES(NULL,2,3,"Shujing","img/story/user_img_3.jpg","img/story/bg_img1_3.jpg","大阪",0,0,"走进亮马河岸Arrow Factory brewing Pub，拥挤的露台、热烈的House音乐、纯正的英式精酿，适合有着英伦情结、有点优雅也有点放肆的你！","高级版的庶民小吃“炸串”，会有不凡的惊喜","提起大阪小吃，我们第一个想到的是章鱼小丸子，但另一样代表性的庶民小吃却鲜有人提及，那就是“串かつ”，可译作炸串。同样是炸，跟天妇罗有什么区别呢？简单来说，天妇罗在日本属于舶来品归化后的和食；炸串则是如假包换的洋食，战后物资匮乏的年代，人们将食材边角料串在签子上，裹一层小麦粉或面包屑后油炸蘸调料吃。出于卫生考虑，炸串店都有个不成文的规矩，“酱料只能蘸一次”。大阪新世界是炸串发源地，随处可见100日元一串的小店。但高级炸串店也不是没有，甚至获得米其林一星的评价。这家餐厅叫“凡”，位于北新地一栋不起眼大厦的地下室。吧台中央是闪亮的大铜炉，一身专业料理人打扮的主厨半隐在铜炉后忙碌。不像法餐或怀石，炸串几乎没有摆盘可言，只是形状上略有变化，无非从圆形变成正方形、长方形而已。好处是就算知道大概食材，咬下去也还是会有惊喜，比如海鳗紫苏、莲藕牛肉末、芝士洋葱圈，外表都是清一色黄茸茸的样子。主厨通常会推荐最优吃法，群马葱适合直接吃，伊勢虾可以挤上柠檬蘸盐、丹波毛豆蘸黄芥末风味更佳。吃到一半才发现有个小心机，其实主厨上菜时把串签对准哪里，意思就是蘸哪种调料。高热量的油炸食品永远是释放压力的绝佳伴侣，冰啤酒一杯接一杯来，炸串用天妇罗无法实现的神秘感告诉食客，不要小看普普通通却可以天马行空的“油炸食品”噢！串かつ　凡地址：大阪府大阪市北区堂島1-3-16 堂島メリーセンタービル B1F营业时间：18:00~24:00人均：15000日元");
INSERT INTO Airbnb_story VALUES(NULL,1,4,"Ling","img/story/user_img_4.jpg","img/story/bg_img1_4.jpg","胡志明市",0,0,"走进三里屯的MOKIHI NO.3，粗旷的古董家具打造了一个美式的空间。乡村音乐和多元的酒单，让人放松又随意，适合朋友相聚，也适合周末一个人的你！","居民楼里的“少女心”","这是隐藏在一栋居民楼里，整个结构跟香港有点相似。会觉得旧旧的, 但打开门的一瞬间，你会发现真的很少女。有种野兽的内心藏着颗少女心。绿色的窗、绿色沙发、绿色床垫、绿色的纱。（绿偏马卡龙的绿 ）有两张床位，靠一个楼梯斜街，上下铺。非常适合闺蜜入住。整个房间格局虽小，但利用的恰到好处。合理利用了整体空间。床位较大要属下铺，房东的心思也很细腻，用床帐营造一种烂漫感，加上小灯泡的闪闪灯光，完全抓住少女心的我。厨房跟床位隔着一块板，厨房的装扮则是各种不同花色的瓷砖拼接。 陈列台上该有的厨具一一不少。细看很多设备都是纯手工的，柜子、沙发、台面都是用几块木板拼接打钉，再统一刷漆。看着挺简单，倒是也想自己学学折腾下。房源地理位置也很不错，楼下就是范五老街，酒吧一条街。重点，隔音效果非常的好。一点都听不到楼下的动次打次。每天都能美美睡上一觉！");
#精选故事种类
CREATE TABLE Airbnb_story_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  family_name VARCHAR(30)
);
INSERT INTO Airbnb_story_family VALUES(1,"房源"),(2,"景点"),(3,"美食"),(4,"文化"),(5,"活动"),(6,"店铺");
#精选故事详情图片
CREATE TABLE Airbnb_story_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  story_id INT,
  bg_img VARCHAR(200)
);
INSERT INTO Airbnb_story_pic VALUES
(1,1,"img/story/bg_img1_1.jpg"),
(2,1,"img/story/bg_img1_2.jpg"),
(3,1,"img/story/bg_img1_3.jpg"),
(4,1,"img/story/bg_img1_4.jpg"),
(5,1,"img/story/bg_img1_5.jpg"),
(6,1,"img/story/bg_img1_6.jpg"),
(7,1,"img/story/bg_img1_7.jpg"),
(8,1,"img/story/bg_img1_8.jpg"),
(9,1,"img/story/bg_img1_9.jpg");
#故事集表
CREATE TABLE Airbnb_story_collection(
  scid INT PRIMARY KEY AUTO_INCREMENT,
  sc_title VARCHAR(300),/*--故事集的大标题*/
  sc_subtitle VARCHAR(800)/*--故事集的二级介绍*/
);
INSERT INTO Airbnb_story_collection VALUES
(NULL,"北京竟然有这些不可思议的酒吧","帝都包罗万有的文化自然少不了酒吧文化，三里屯到亮马桥，不但分布着各国使馆，更有不同地域风格的酒吧。周末到了，要过一个怎样的夜晚呢？粗旷还是精致、热闹还是安静？从南洋到英伦，从精酿到鸡尾酒，总能找到一间酒吧称你的心情。"),
(NULL,"住进「山水间」在民宿中亲近自然","本期「爱彼迎民宿指南」精选好风景的爱彼迎民宿，开窗即是山水，呼吸都有绿意。带着全家、约上朋友，寻其中一处宅子，也许在大理的洱海边，也许在莫干山的深处，或是在重庆的田园里，日出日落，做饭聊天，旅行从舒心净肺开始。"),
(NULL,"住进「旧时光」在民宿中重拾历史","本期「爱彼迎民宿指南」带你跳跃时间和空间，找到国内有历史的老宅：从清时的乾隆行宫，到现代的珠江旧船厂；从南京的科举考试旧址，到大理的白族传统民居，都在爱彼迎民宿。邀你住进去，深入其中，一秒穿越不同年代，聆听每一座城市的故事。");
#合用空间 床类型表 zm
CREATE TABLE Airbnb_Bed_type(
 Bed_type_id INT PRIMARY KEY AUTO_INCREMENT,
 Bed_type_name VARCHAR(64)
);
INSERT INTO Airbnb_Bed_type VALUES(NULL,'沙发床'),
(NULL,'沙发'),(NULL,'地板床垫'),(NULL,'单人床'),(NULL,'双人床');
#地区表 zm
CREATE TABLE Airbnb_district(
 District_id INT PRIMARY KEY AUTO_INCREMENT,
 District_name VARCHAR(64) UNIQUE,
 District_longitude VARCHAR(64),#经度
 District_latitude VARCHAR(64),#纬度
 City_id INT
);
#城市表 数据 zm
INSERT INTO Airbnb_City VALUES(NULL,'上海');
INSERT INTO Airbnb_City VALUES(NULL,'北京');
#地区表 数据 zm
INSERT INTO Airbnb_district VALUES
(NULL,'静安区','121.45','31.23','1'),
(NULL,'徐汇区','121.43','31.18','1'),
(NULL,'长宁区','121.42','31.22','1'),
(NULL,'黄浦区','121.48','31.23','1'),
(NULL,'虹口区','121.50','31.27','1'),
(NULL,'宝山区','121.48','31.40','1'),
(NULL,'浦东新区','121.53','31.22','1'),
(NULL,'普陀区','121.40','31.25','1'),
(NULL,'杨浦区','121.52','31.27','1'),
(NULL,'闵行区','121.38','31.12','1'),
(NULL,'嘉定区','121.27','31.38','1'),
(NULL,'松江区','121.22','31.03','1'),
(NULL,'金山区','121.33','30.75','1'),
(NULL,'青浦区','121.12','31.15','1'),
(NULL,'奉贤区','121.47','30.92','1'),
(NULL,'崇明区','121.40','31.62','1'),
(NULL,'西城区','116.37','39.92','2'),
(NULL,'东城区','116.42','39.93','2'),
(NULL,'朝阳区','116.43','39.92','2'),
(NULL,'房山区','116.13','39.75','2'),
(NULL,'海淀区','116.30','39.95','2'),
(NULL,'石景山区','116.22','39.90','2'),
(NULL,'顺义区','116.65','40.13','2'),
(NULL,'丰台区','116.28','39.85','2'),
(NULL,'怀柔区','116.63','40.32','2'),
(NULL,'密云区','116.83','40.37','2'),
(NULL,'昌平区','116.23','40.22','2'),
(NULL,'大兴区','116.33','39.73','2'),
(NULL,'平谷区','117.12','40.13','2'),
(NULL,'通州区','116.65','39.92','2'),
(NULL,'延庆区','115.97','40.45','2'),
(NULL,'门头沟区','116.10','39.93','2')
;