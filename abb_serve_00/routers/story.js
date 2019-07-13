const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//故事接口
router.get("/",(req,res)=>{
  var sql="SELECT scid,sc_title,sc_subtitle FROM Airbnb_story_collection";
  pool.query(sql,[],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:0});
    }else{
      res.send(result);
    }
    
  });
});
module.exports=router;