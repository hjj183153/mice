const express=require('express');
const moment = require("moment");
const pool=require('../pool.js');
var router=express.Router();
//房屋查询接口
router.get("/",(req,res)=>{
  var condition=req.query;
  let {
    House_City_id,
    Time_start,
    Time_end,
  } = condition;

  //全连接
  // var sql='(SELECT DISTINCT * FROM Airbnb_House LEFT JOIN Airbnb_House_Time ON House_id=Time_House_id WHERE House_City_id=? AND Time_start=? AND Time_end=?) UNIQUE (SELECT DISTINCT * FROM Airbnb_House RIGHT JOIN Airbnb_House_Time ON House_id=Time_House_id WHERE House_City_id=? AND Time_start=? AND Time_end=?)';

  //in
  // var sql='SELECT * FROM Airbnb_House WHERE House_id in ( SELECT Time_House_id FROM Airbnb_House_Time WHERE (@Time_start is null or @Time_start=?) AND (@Time_end is null or @Time_end=? ) ) AND (House_City_id is null or House_City_id=?)';

  
  console.log(House_City_id,Time_start,Time_end);
  if(!House_City_id){
    House_City_id=1;
  }
  if(!Time_start){
    let startDate=new Date('2019-7-12').toLocaleDateString();
    Time_start=startDate
  }
  if(!Time_end){
    let endDate=new Date('2999-12-31').toLocaleDateString();
    Time_end=endDate;
  }
  console.log(House_City_id,Time_start,Time_end);
  var sql='SELECT * FROM Airbnb_House LEFT JOIN Airbnb_House_Time ON House_id=Time_House_id WHERE House_City_id=? AND Time_start>=? AND Time_end<=?'
  pool.query(sql,[House_City_id,Time_start,Time_end],(err,result)=>{
    if(err) throw err;
    console.log(sql);
    //console.log(result);
    res.send(result);
  })
})
module.exports=router;