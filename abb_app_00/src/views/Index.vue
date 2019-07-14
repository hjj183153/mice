<template>
    <div>
        <!--引入头部组件-->
        <my-header class="position-abs"></my-header>
        <div class="block">
    <el-carousel height="529px">
      <el-carousel-item v-for="(item,i) in Carousellist" :key="i">
        <div >
             <img style="width:100%;height:529px" :src="'http://127.0.0.1:3000/img/img-index/'+item.Carousel_imgurl" alt=""> 
        </div>
      </el-carousel-item>
    </el-carousel>
  </div>

    </div>
</template>
<script>
export default {
    data(){
        return {
            Carousellist:[]
        }
    },
    created(){
        this.getcarouserimg()
    },
    methods: {
        getcarouserimg(){
            this.axios.get("/index/Carousel").then(result=>{
                console.log(result.data.data)
                this.Carousellist=result.data.data
            })
        }
    },
    
}
</script>
<style scoped>
.position-abs{
    position:absolute;
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
  
</style>