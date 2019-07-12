const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//个人信息接口
router.get("/",(req,res)=>{
  res.send("gyh");
})
module.exports=router;