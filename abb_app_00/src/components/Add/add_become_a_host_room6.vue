<template>
<!-- 房源图片上传 -->
    <div class="div_bg">
        <div class="div_body" >
            <div>
                <div class="font-title3" style="margin-bottom:10px;">
                    <p>请不要上传带水印的照片。</p>
                </div>
                <div class="div_title font_title1">
                    <p>为房源添加照片</p>
                </div>
                <div class="font-title3">
                    <p>照片帮助房客想像入住您的房源是什么样的体验。 您可以先从一个房源开始，然后在发布后添加更多。</p>
                </div>
                <div class="div_body1"></div>
                <div class="div_body2"></div>
                <div class="div_body3">
                    <el-upload class="upload-demo" drag action="http://127.0.0.1:3000/add/" multiple>
                        <i class="el-icon-upload"></i>
                        <div class="el-upload__text p_font1">上传图片或者把它们拖进框内</div>
                        <div class="el-upload__tip" slot="tip"></div>
                    </el-upload>
                </div>
                <!-- 底部固定悬浮 -->
                    <div class="div_footer1" style="margin-left:-30px;">
                        <div>
                            <div class="div_margin">
                                <div style="height:0px;border:1px solid #dce0e0;width:100%;margin-bottom:20px;margin-top:-20px" ></div>
                                <div>
                                    <svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 2.8em; width: 1em; display: block; fill: currentcolor;"><path d="m13.7 16.29a1 1 0 1 1 -1.42 1.41l-8-8a1 1 0 0 1 0-1.41l8-8a1 1 0 1 1 1.42 1.41l-7.29 7.29z" fill-rule="evenodd"></path></svg>
                                    <div class="a_footer1" @click="return1">返回</div>
                                </div>
                                <div>
                                    <div class="next_btn" @click="submit">下一个</div>
                                </div>
                            </div>
                        </div>
                    </div>


            </div>

        
        </div>
    </div>
</template>
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=您申请的key值"></script>
<script>
export default {
     data(){return{
        
    }},
    props:{
        Airbnb_House:{default:""}
    },
     methods:{
         submit(){          
             this.$router.push("/add_become_a_host_room/description")
             },
        return1(){
                this.$router.push("/add_become_a_host_room/location2")    
        },
    }
}
</script>
<style scoped>
.div_bg{
    background: #f8f8f8;
}
.div_body{
    width:912px;
    margin: auto;
    font-size: 16px;
    padding-top:74px;
}
.div_body>div{
    width:100%;
    box-sizing: border-box;
    padding: 30px 30px 16px 30px;
    padding-bottom: 102px;
    background: #fff;
}
.font-title3{    
    font-weight: 400;
    line-height: 1.375em;
    color:rgb(72,72,72);
    margin-bottom: 32px;
}
.div_title{
    padding: 32px 0 24px;
}
.font_title1{
    font-size:24px;
    font-weight: 800;
    line-height: 1.25em;
    color:#484848;
    padding: 32px 0 10px;
}
</style>
<style>
.upload-demo>.el-upload{
    width:100%;
    height:350px;
}
.upload-demo>.el-upload>.el-upload-dragger{
    width:100%;
    height:350px; 
    border-radius:6px;
    border:2px dashed #008489;
    
}
.el-upload-dragger .el-icon-upload{
    margin:110px 0 16px !important;
}
.p_font1{
    font-size: 19px !important;
    font-weight: bold;
    text-align: left;
    line-height: 1.43;
    color:#484848 !important;
}
.div_footer1{
    height:102px;
    width: 100%;
    z-index: 100;
    position: fixed;
    bottom:0px;
    background: #f8f8f8;
}
.div_footer1>div{
    width: 912px;
    height:82px;
    box-sizing: border-box;
}
.div_footer1>div>div{
    background: #fff;
    width:100%;
    padding: 0px 30px 20px;
    padding-top:20px;
    height:82px;
}
.div_footer1>div>div div:first-child{
    float: right;
}
.div_footer1>div>div svg{
    color:#008489;
    float: left;
    padding:13px 0; 
}
.a_footer1{
    display: block;
    float: left;
    color:#008489;    
    font-weight: bold;
    padding:10px 7px;  
}
.a_footer1:hover{
    text-decoration: underline;
}
.next_btn{
    display: block;
    float: right;
    height:48px;
    width: 96px;
    padding: 12px 22px;
    box-sizing: border-box;
    background: #008489;
    border-radius: 5%;
    font-size: 16px;
    font-weight: 600;
    color:#fff;
}
</style>
