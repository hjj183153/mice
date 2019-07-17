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
    let startDate=new Date('2019-7-12').toLocaleDateString();
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
  var sql='SELECT * FROM Airbnb_House LEFT JOIN Airbnb_House_Time ON House_id=Time_House_id WHERE House_City_id=? AND (House_price between ? and ?) AND Time_start>=? AND Time_end<=?'
  console.log(price[0]);
  console.log(sql);
  pool.query(sql,[House_City_id,price[0],price[1],Time_start,Time_end],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
module.exports=router;