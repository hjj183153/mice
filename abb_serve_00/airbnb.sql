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
 House_longitude VARCHAR(64),
 House_latitude VARCHAR(64),
 House_people_num INT,#可住人数
 House_type VARCHAR(64),#房源类型    
 House_price INT,
 House_tag VARCHAR(64),
 House_bednum INT,
 House_Bed VARCHAR(128),
 House_restroom INT,
 House_HouseAmenities VARCHAR(128),
 House_Amenities VARCHAR(64),
 House_Building VARCHAR(64),#Airbnb_housingResources_Type
 House_detail VARCHAR(256),
 House_address VARCHAR(128),
 House_trip VARCHAR(128),
 House_label VARCHAR(64),
 House_imgurl VARCHAR(128)
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
    user_login_time DATETIME
);
#个人信息数据 gyh
INSERT INTO Airbnb_user VALUES(NULL,"张三","zhangsan","zhangsan@163.com",15660902590,1,'2018/1/1','2018/1/2');
INSERT INTO Airbnb_user VALUES(NULL,"涛涛","taotao","taotao@163.com",15660902591,1,'2018/1/3','2018/1/4');
INSERT INTO Airbnb_user VALUES(NULL,"然然","ranran","ranran@163.com",15660902592,0,'2018/1/5','2018/1/6');
INSERT INTO Airbnb_user VALUES(NULL,"东东","dongdong","dongdong@163.com",15660902593,1,'2018/1/7','2018/1/8');
INSERT INTO Airbnb_user VALUES(NULL,"亮亮","liangliang","liangliang@163.com",15660902594,1,'2018/1/9','2018/1/10');
<<<<<<< HEAD
 #房屋图片数据
 INSERT INTO `airbnb_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES ('001', '1', NULL, 'https://z1.muscache.cn/im/pictures/f4043af9-eacb-47c2-b350-d6ad0e8e419b.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/f3e442f6-f07a-4a8e-a5c4-7b5d7495df0b.jpg?aki_policy=xx_large');
 INSERT INTO `airbnb_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES ('002', '1', NULL, 'https://z1.muscache.cn/im/pictures/79c0a62a-72b4-4587-a556-a600ca25b0ec.jpg?aki_policy=large', NULL);
INSERT INTO `airbnb_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES ('003', '1', NULL, 'https://z1.muscache.cn/im/pictures/a96de13b-5497-4361-82ff-c653cf181036.jpg?aki_policy=large', NULL);
INSERT INTO `airbnb_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES ('004', '1', NULL, 'https://z1.muscache.cn/im/pictures/51e269e5-e80d-4ab6-8581-635714422640.jpg?aki_policy=large', NULL);
=======

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
INSERT INTO Airbnb_story_collection VALUES
(NULL,"北京竟然有这些不可思议的酒吧","帝都包罗万有的文化自然少不了酒吧文化，三里屯到亮马桥，不但分布着各国使馆，更有不同地域风格的酒吧。周末到了，要过一个怎样的夜晚呢？粗旷还是精致、热闹还是安静？从南洋到英伦，从精酿到鸡尾酒，总能找到一间酒吧称你的心情。"),
(NULL,"住进「山水间」在民宿中亲近自然","本期「爱彼迎民宿指南」精选好风景的爱彼迎民宿，开窗即是山水，呼吸都有绿意。带着全家、约上朋友，寻其中一处宅子，也许在大理的洱海边，也许在莫干山的深处，或是在重庆的田园里，日出日落，做饭聊天，旅行从舒心净肺开始。"),
(NULL,"住进「旧时光」在民宿中重拾历史","本期「爱彼迎民宿指南」带你跳跃时间和空间，找到国内有历史的老宅：从清时的乾隆行宫，到现代的珠江旧船厂；从南京的科举考试旧址，到大理的白族传统民居，都在爱彼迎民宿。邀你住进去，深入其中，一秒穿越不同年代，聆听每一座城市的故事。");
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
>>>>>>> 02eca4ab79ea09c100e1c12e8159040fb53e6010
