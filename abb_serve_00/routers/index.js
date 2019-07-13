const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//轮播图
router.get("/Carousel",(req,res)=>{
  var sql="SELECT Carousel_imgurl FROM Airbnb_Carousel";
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      res.send({code:200,data:result})
  })
})
module.exports=router;