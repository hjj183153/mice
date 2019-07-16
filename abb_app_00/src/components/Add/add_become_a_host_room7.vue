<template>
<!-- 房源名称 -->
    <div class="div_bg">
        <div class="div_body" >
            <div>
                <div class="div_title font_title1">
                    <p>为您的房源起个名字</p>
                </div>
                <div class="font-title3">
                    <p>为房源起一个能突出其独特之处的标题，吸引更多房客。</p>
                </div>
                <div class="div_body1">
                    <input type="text" maxlength="50" placeholder="房源名称" v-model="House_name" @change="House_namechange" @keyup="housenamecount">
                </div>
                <div class="font-title3" style="margin-top:5px;">
                    <p v-text="`剩余${namecount}个字符`"></p>
                </div>
                <div class="font-title3" style="margin-top:40px;">
                    <p>好的房源标题可以增加房客的点击率，房屋名称可包含地标、位置、附近交通、房屋特色等信息。</p>
                </div>
            </div>

        
        </div>
    </div>
</template>
<script>
export default {
     data(){return{
        House_name:"",
         namecount:50,
    }},
    props:{
        Airbnb_House:{House_name:""}
    },
    methods:{
        House_namechange(){
            this.Airbnb_House.House_name=this.House_name;
            console.log(this.Airbnb_House.House_name)
        },
        housenamecount(){

            this.namecount=50-this.House_name.length
             console.log(this.namecount)

        }
    },
    // computed:{
    //     namecount(){            
    //         this.namecount=50-this.House_name.length
	// 				return this.namecount
    //             }
    // },
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
    width:60%;
    box-sizing: border-box;
    padding: 30px 30px 16px 30px;
    padding-bottom: 102px;
    background: #fff;
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
.font-title3{    
    font-weight: 400;
    line-height: 1.375em;
    color:rgb(72,72,72);
    margin-bottom: 32px;
}
.div_body1>input{
    padding: 20px;
    width: 100%;
    border:1px solid #dce0e0;
    border-radius:3px;
    box-sizing: border-box;
    color:#484848;
    font-size:100%;
}
</style>