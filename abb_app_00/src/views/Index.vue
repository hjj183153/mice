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
                    <button @click="changeblue(1)"  :class="{isblue:i==1}" class="my-btn">北京</button>
                    <button @click="changeblue(2)"  :class="{isblue:i==2}" class="my-btn">上海</button>
                    <button @click="changeblue(3)"  :class="{isblue:i==3}" class="my-btn">成都</button>
                    <button @click="changeblue(4)"  :class="{isblue:i==4}" class="my-btn">重庆</button>
                    <button @click="changeblue(5)"  :class="{isblue:i==5}" class="my-btn">广州</button>
                    <button @click="changeblue(6)"  :class="{isblue:i==6}" class="my-btn">西安</button>
                    <button @click="changeblue(7)"  :class="{isblue:i==7}" class="my-btn">南京</button>
                    <button @click="changeblue(8)"  :class="{isblue:i==8}" class="my-btn">南京</button>
                    <button @click="changeblue(9)"  :class="{isblue:i==9}" class="my-btn">南京</button>
                    <button @click="changeblue(10)"  :class="{isblue:i==10}" class="my-btn">南京</button>
                    <button @click="changeblue(11)"  :class="{isblue:i==11}" class="my-btn">南京</button>
                </div>
                <div>
                    <!-- 主题页图文 -->
                    <div>
                        <a href="javascirpt:;">
                            <img src="http://127.0.0.1:3000/img/img-index/index1.jpg" alt="">
                        </a>
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
            i:0
            
        }
    },
    created(){
        this.getcarouserimg()
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
      box-shadow:0 5px 10px 0px #222
  }
  .isblue{
      background: #00848a
  }

</style>