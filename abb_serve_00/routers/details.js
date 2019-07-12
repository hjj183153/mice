const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//房屋详情接口
router.get("",(req,res)=>{
  var uid=req.query.uid;
  var sql="select * from airbnb_house";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err
    if(result.length>0){
      res.send(result)
    }else{
      res.send({code:-1,msg:"查询失败"})
    }
  })
})
module.exports=router;