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
    District_name
  } = condition;
  console.log(House_City_id,Time_start,Time_end,people,children,baby,price,District_name);
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
  if(!District_name){
    District_name='朝阳区';
  }
  // var sql='SELECT * FROM Airbnb_district WHERE District_name=?'
  // pool.query(sql,[District_name],(err,result)=>{
  //   if(err) throw err;
  //   console.log(result[0]);
  // });
  //console.log(House_City_id,Time_start,Time_end);
  var sql='SELECT * FROM Airbnb_House LEFT JOIN Airbnb_House_Time ON House_id=Time_House_id WHERE House_City_id=? AND Time_start>=? AND Time_end<=?'
  pool.query(sql,[House_City_id,Time_start,Time_end],(err,result)=>{
    if(err) throw err;
    //console.log(sql);
    //console.log(result);
    res.send(result);
  })
})
module.exports=router;