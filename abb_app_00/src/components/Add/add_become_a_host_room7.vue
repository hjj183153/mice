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
                <!-- 底部固定悬浮 -->
                    <div class="div_footer1" style="margin-left:-30px;">
                        <div>
                            <div class="div_margin">
                                <div style="height:0px;border:1px solid #dce0e0;width:487.2px;margin-bottom:20px;" ></div>
                                <div>
                                    <svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 2.8em; width: 1em; display: block; fill: currentcolor;"><path d="m13.7 16.29a1 1 0 1 1 -1.42 1.41l-8-8a1 1 0 0 1 0-1.41l8-8a1 1 0 1 1 1.42 1.41l-7.29 7.29z" fill-rule="evenodd"></path></svg>
                                    <div class="a_footer1" @click="return1">返回</div>
                                </div>
                                <div>
                                    <!-- <router-link :to="pageurl+?+add_page"> -->
                                    <div class="next_btn" @click="submit">下一个</div>
                                    <!-- </router-link> -->
                                </div>
                            </div>
                        </div>
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
         submit(){          
            //  this.$router.push("/add_become_a_host_room/description")
             },
        return1(){
                this.$router.push("/add_become_a_host_room/photos")    
        },
   
        House_namechange(){
            this.Airbnb_House.House_name=this.House_name;
        },
        housenamecount(){
            this.namecount=50-this.House_name.length
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
.div_footer1{
    height:102px;
    width: 60%;
    z-index: 100;
    position: fixed;
    bottom:0px;
    background: #f8f8f8;
}
.div_footer1>div{
    width: 912px;
    height:82px;
    box-sizing: border-box;
    margin: 0px auto !important;
}
.div_footer1>div>div{
    background: #fff;
    width: 547.2px;
    padding: 0px 30px 20px;
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