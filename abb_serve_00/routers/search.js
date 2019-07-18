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
  
  if(!House_City_id){
    House_City_id=2;
  }
  if(!Time_start){
    let startDate=new Date('1999-01-01').toLocaleDateString();
    Time_start=startDate
  }
  if(!Time_end){
    let endDate=new Date('2999-12-31').toLocaleDateString();
    Time_end=endDate;
  }
  //纬度
  if(!latitude){
    latitude=39.92;
  }
  //经度
  if(!longitude){
    longitude=116.37;
  }
  //SELECT * FROM Airbnb_House LEFT JOIN Airbnb_House_Time ON House_id=Time_House_id WHERE House_City_id=2 AND (House_price between 50 and 5000) AND(House_latitude between 39.42 and 40.42) AND (House_longitude between 115.87 and 116.87) AND Time_start>=1999-01-01 AND Time_end<=2999-12-31
  
  var sql='SELECT * FROM Airbnb_House LEFT JOIN Airbnb_House_Time ON House_id=Time_House_id WHERE House_City_id=? AND (House_price between ? and ?) AND(House_latitude between ? and ?) AND (House_longitude between ? and ?) AND Time_start>=? AND Time_end<=?';

  console.log(House_City_id,price[0],price[1],latitude-0.5,latitude+0.5,longitude-0.5,longitude+0.5,Time_start,Time_end);
  console.log(sql);
  pool.query(sql,[House_City_id,price[0],price[1],latitude-0.5,latitude+0.5,longitude-0.5,longitude+0.5,Time_start,Time_end],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
module.exports=router;