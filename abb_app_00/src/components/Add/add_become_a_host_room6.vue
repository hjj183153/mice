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
            </div>

        
        </div>
    </div>
</template>
<script>
export default {
     data(){return{
        
    }},
    props:{
        Airbnb_House:{default:""}
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

</style>
