const express=require('express');
const moment = require("moment");
const pool=require('../pool.js');
var router=express.Router();
//房屋查询接口
router.get("/",(req,res)=>{
  var condition=req.query;
  console.log(condition);
  let {
    House_City_id,
    Time_start,
    Time_end,
    people,
    children,
    baby,
    price,
    latitude,
    longitude,
  } = condition;
  
  if(!Time_start){
    let startDate=new Date('1999-01-01').toLocaleDateString();
    Time_start=startDate
  }
  if(!Time_end){
    let endDate=new Date('2999-12-31').toLocaleDateString();
    Time_end=endDate;
  }

  console.log('经度'+longitude);
  console.log("纬度"+latitude);
  var longitudeS=Math.floor(parseFloat(longitude))+100;
  var longitudeE=Math.floor(parseFloat(longitude))-100;
  var latitudeS=Math.floor(parseFloat(latitude))+20;
  var latitudeE=Math.floor(parseFloat(latitude))-20;
  console.log(longitudeS,longitudeE,latitudeS,latitudeE)
  //SELECT * FROM Airbnb_House LEFT JOIN Airbnb_House_Time ON House_id=Time_House_id WHERE House_City_id=2 AND (House_price between 50 and 5000) AND(House_latitude between 39.42 and 40.42) AND (House_longitude between 115.87 and 116.87) AND Time_start>=1999-01-01 AND Time_end<=2999-12-31
  
  var sql='SELECT * FROM Airbnb_House LEFT JOIN Airbnb_House_Time ON House_id=Time_House_id WHERE House_City_id=? AND (House_price >=? and House_price <=?) AND (House_longitude <= ? and House_longitude >= ?) AND (House_latitude <= ? and House_latitude >= ?) AND Time_start>=? AND Time_end<=?';
  //var sql= SELECT * FROM Airbnb_House WHERE House_longitude>=16 AND House_longitude<=216 ;
  pool.query(sql,[House_City_id,price[0],price[1],longitudeS,longitudeE,latitudeS,latitudeE,Time_start,Time_end],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
module.exports=router;