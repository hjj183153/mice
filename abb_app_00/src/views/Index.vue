<template>
    <div>
        <!--引入头部组件-->
        <div class="abs">
        <my-header class="position-abs"></my-header>
        </div>  
        <div class="block">
            <el-carousel height="429px">
                <el-carousel-item v-for="(item,i) in Carousellist" :key="i">
                    <div >
                        <img style="width:100%;height:429px" :src="'http://127.0.0.1:3000/img/img-index/'+item.Carousel_imgurl" alt=""> 
                    </div>
                </el-carousel-item>
            </el-carousel>
        </div>
            <!-- 中间主体部分 -->
            <section>
                <h1 class="indextitle">夏季特惠房源</h1>
                <p class="litletitle">低至 7 折，可叠加使用礼券</p>
                <div class="btn-container">
                    <button @click="changeblue(0)"  :class="{isblue:i==0}" class="my-btn">北京</button>
                    <button @click="changeblue(1)"  :class="{isblue:i==1}" class="my-btn">上海</button>
                    <button @click="changeblue(2)"  :class="{isblue:i==2}" class="my-btn">成都</button>
                    <button @click="changeblue(3)"  :class="{isblue:i==3}" class="my-btn">重庆</button>
                    <button @click="changeblue(4)"  :class="{isblue:i==4}" class="my-btn">广州</button>
                    <button @click="changeblue(5)"  :class="{isblue:i==5}" class="my-btn">西安</button>
                    <button @click="changeblue(6)"  :class="{isblue:i==6}" class="my-btn">南京</button>
                </div>
                <!-- 主题页图文 -->
                <div>
                    <div><!--每层 弹性布局-->
                        <div v-for="(item,key) of houselist" :key="key">每个房间内容
                                <div>图
                                    <a href="javascirpt:;">
                                        <img :src="'http://127.0.0.1:3000/img'+item.House_imgurl" alt="">
                                    </a>
                                </div>
                                <div>
                                    <span>酒店房间</span><span>·</span><span>一张床</span>
                                </div>
                                <div>
                                    <a href="javascirpt:;">

                                    </a>
                                </div>
                                <div>--价格
                                    <span><span></span></span></div>
                                <div>五星房东</div>
        
                        </div> 
                    </div>
                    
                </div>
            </section>


        <!-- 引入底部组件 -->
        <my-footer></my-footer>
    </div>
</template>
<script>
export default {
    data(){
        return {
            Carousellist:[],
            i:0,
            houselist:[{
                House_Bed:"",
                House_Building:"",
                House_imgurl:"",
                House_name:"",
                House_price:0,
                House_tag:""
            }]
            
        }
    },
    created(){
        this.getcarouserimg(),
        this.changeblue(this.i)
    },
    methods: {
        getcarouserimg(){
            this.axios.get("/index/Carousel").then(result=>{
                //console.log(result.data.data)
                this.Carousellist=result.data.data
            })
        },
        changeblue(i){
            this.i=i;
            var url="/index/cities";
            var obj={i}
            this.axios.get(url,{params:obj}).then(res=>{
               // console.log(res.data.data[0].House_imgurl)
                this.houselist=res.data.data
                //console.log(22,this.houselist)
            })
        }
    },
    
}
</script>
<style scoped>

.position-abs{
     position: absolute; width:100%;
    z-index:10;
}
    el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 150px;
    margin: 0;
  }

  .el-carousel__item:nth-child(2n) {
     background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
     background-color: #d3dce6;
  }
  section{
      width:900px;margin-top:100px;
      margin:0 auto;
      overflow: hidden;
  }
  .indextitle{
      color:#484848;padding:10px;
      font:24px Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC"
  }
  .litletitle{
      padding:10px;
      font:16px Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC"
  }
  .btn-container{
      width:1500px;
      overflow: hidden;
      padding-bottom: 20px;
      padding-top: 10px;
  }
  .my-btn{
      width:100px;height:40px;
      margin-right:12px;
      border:1px solid #eee;
      border-radius: 5px;
      background: #fff;
      outline: none;
      box-sizing: border-box;
  }
  .my-btn:hover{
      box-shadow:0 2px 5px #888
  }
  .isblue{
      background: #00848a;
      border:0;
  }

</style>