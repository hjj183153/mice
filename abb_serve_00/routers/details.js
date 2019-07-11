const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//房屋详情接口
router.get("/",(req,res)=>{
  var uid=req.query.uid;
})
module.exports=router;