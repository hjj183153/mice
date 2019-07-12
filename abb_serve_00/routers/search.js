const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//房屋详情接口
router.get("/",(req,res)=>{
  var condition = req.query;
  var sql='select * from airbnb_house';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})
module.exports=router;