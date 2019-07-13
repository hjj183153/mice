const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//个人信息接口
router.get("/",(req,res)=>{
  var user_id=req.session.user_id;
  if(!user_id){
    res.send({code:-1,msg:'请登录'});
    return;
  }
  var sql='SELECT user_name,user_pwd,user_email,user_phone,user_gender,user_reg_time,user_login_time FROM Airbnb_user WHERE user_id=?';
  pool.query(sql,[user_id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:'查询成功',data:result})
  })
})
module.exports=router;