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
 House_label VARCHAR(64)
);
#房屋表数据
INSERT INTO Airbnb_House VALUES(NULL,);
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
INSERT INTO `airbnb_house` 
(`House_id`, `House_City_id`, `House_name`, `House_User_id`, `House_longitude`, 
`House_latitude`, `House_people_num`, `House_type`, `House_price`, 
`House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, 
`House_HouseAmenities`, `House_Amenities`, `House_Building`, 
`House_detail`, `House_address`, `House_trip`, `House_label`) 
VALUES 
(NULL, '1', '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 
'1', '1231321', '12313213', '3', '独立房间', '3000', '9折', 
'2', '圆床', '2', '厨房,空调', '免费停车位', '精品酒店', 
'null', 'null', 'null', 'null');
#INSERT INTO Airbnb_House VALUES(NULL,)

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
INSERT INTO Airbnb_story VALUES(1,1,1,"Kiki","img/story/user_img_1.jpg","img/story/bg_img1_1.jpg","北京",0,0,"走进三里屯东三街的Róng Bar，一派复古的装饰。坐在舒适的露台点一杯「青梅煮酒」，论英雄何人，适合向往度假、寻求惬意的你！","将海鲜做到极致的大叔居酒屋","酒肴一瓢，主打日式海鲜料理，素净的木招牌在霄云路美食后街上众多日料店之中并不显眼。北京大叔的真性情酒肴一瓢的老板是位北京大叔，浑身透着北京人的健谈，今天最新鲜的海产是什么，值得一试的是什么，自进门起老板就热络招呼。对待食物老板又有着近乎严苛的匠人精神，每天只挑最新鲜的海产，严格把控上菜时间和顺序，在细节上绝不马虎。日式海鲜的一万种可能性,在酒肴一瓢，除了当日最新鲜的鱼生刺身，酒蒸、串烧、火锅，海产的可能性多到超乎想象。活章鱼七味烧，新鲜活章鱼去皮剔筋，客人自行在炭炉上烤制，边烤边吃，保证最新鲜的口感。活牡蛎炮烙，手掌大的牡蛎撒盐烤制，新鲜的牡蛎肉质厚实，入口微甜，对贝类无感的我都被征服了。滑蛋青蛤，不太常见的做法，鸡蛋将蛤蜊的鲜味提升了一个层次。老板总说自己的餐厅无非是一间大叔店罢了，登不上台面。在我看来，抱有如此热情和心思对待料理，才是食客们的宝藏之地。地址：朝阳区霄云路15号霄云美食街后街24门");
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
