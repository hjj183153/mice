<template>
<div class='footer'>
    <div id='btn'>
        <h2>登录爱彼迎</h2>
        <h3>没有账号?
      <a class="password">注册</a>
    </h3>
     <img src="img-login/icon-weixin.png" alt="">
    </div>
    <div class='zc'>
        用户名：<input type="text" id='uname' placeholder='请输入用户名'>
        <br>
        <br>
        密码：<input type="password" id='upwd' placeholder="请输入密码">
        <br>
        <br>
        性别：<input type="gender" id='tes' placeholder='请输入性别'>
        <br>
        <br>
        手机：<input type="text" id='phone' placeholder='请输入手机号'>
        <br>
        <br>
        邮箱：<input type="text" id='email' placeholder='请输入邮箱'>
        <br>
        <br>
    </div>
        <div class='account'>
            <a href="#">账号登录</a>
        </div>
    <div class='sign'>
        <button>提交注册信息</button>
    </div>
</div>
</template> 
<script>
export default {
    data(){
        return{
        }
    }
}
</script>
<style scope>
    *{padding:0;margin:0}
    ul,li{list-style:none;}
    a{text-decoration:none;}
/*--------------------------------------------------------*/
    .footer{/*登录父级*/
        width:568px;
        height:1000.06;
        text-align:center;
        background:#f5f7fa;
       /* position:relative;*/
        margin-left:461px;
        margin-top:130px;
    }
    .footer>div>h2{/*font 登录*/
       margin-right:360px;
    }
    .footer>div>h3{/*没有账号？*/
        margin-right:350px;
         padding-top:10px;
    }
    .footer>div>h3>a{/*注册*/
       margin-top:90px;
        /*margin-right:177px;*/
        color:rgb(0,132,137);
        font-family:"微软雅黑";
    }
    .zc{/*输入框父元素*/
        margin-top:31px;
        color:#272424;
       
    }
    .zc>input{/*5个输入框*/
       padding:5px;
        width:351px;
        height:32px;
        border-color:#0a0a0a;
        border:1px;
    }
    .account>a{/*账号登录*/
        margin-left:290px;
        color:rgb(0,132,137);

    }
    .sign>button{
        width:341px;
        height:42px;
        /* padding:-6px; */
        background-color:#ff5a5f;
        border-color:#ff5a5f;
        margin-top:24px;
    }
</style>

