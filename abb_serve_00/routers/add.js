const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//房屋类型接口
// server.get("/housingResources_Type",(req,res)=>{
  
// })
router.get("/housingResources_Type",(req,res)=>{
    var sql=`SELECT housingResources_id,housingResources_name FROM Airbnb_housingResources_Type`;
    pool.query(sql,[],(err,result)=>{
      if(err){
        console.log(err);
        res.send({code:0});
      }else{
        res.send(result);
      }
    })
})
//出租类型接口
router.get("/Rent_Type",(req,res)=>{
    var sql=`SELECT Rent_id,Rent_name,Rent_about FROM Airbnb_Rent_Type`;
    pool.query(sql,[],(err,result)=>{
      if(err){
        console.log(err);
        res.send({code:0});
      }else{
        res.send(result);
      }
    })
})
module.exports=router;