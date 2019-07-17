<template>
    <div class='register'>
        <h2>欢迎登录</h2>
            <div class='input'>
                账号：<input type="text" id='phone' class='inputbox' placeholder='请输入邮箱地址/手机号码'>
                <br>
                <br>
                密码：<input type="password" id='upwd' class='crypto' placeholder="请输入您的密码">
            </div>
            <div class='chose'>
                <input type="checkbox" value='0'>自动登录<a href="javascript" class='password'>
                    忘记密码
                </a>
            </div>
            <button class='btn'>登录</button>
    </div>
</template>
<script>
    export default{
        data(){
        return{

        }
        }
    }
</script>
<style>
    *{padding:0;margin:0}
    ul,li{list-style:none;}
    a{text-decoration:none;}
    /*-----------------------------------------------------*/
    .register{/*父元素*/
        width:482px;
        height:1000.06;
        text-align:center;
        background:#f5f7fa;
        margin-left:461px;
        margin-top:130px;
    }
    .register>h2{
        margin-left:-349px;
    }
    .input{
        margin-top:40px;
        margin-right:42px;
    }
    .input>input{
        padding:9px;
        width:275px;
        height:20spx;
        margin-top:14px;
    }
    .chose{/*自动登录忘记密码*/
        margin-left:-1px;
        margin-top:43px;
    }
    .chose>a{
        margin-left:136px;
        }
    .btn{
        padding:5px;
        width:332px;
        height:43px;
        margin-top:17px;
        background:#ff5a5f;
        border-color:#ff5a5f;
        margin-right:38px;
    }
</style>