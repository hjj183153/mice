<template>
    <div>
        <!--引入头部组件-->
        <div class="abs">
        <my-header class="position-abs" v-show="lp"></my-header>
        <user-header class="position-abs" v-show="gyh"></user-header>
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
                <h1 class="indextitle">夏季特惠房源</h1>   <!--夏季特惠房源-->
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
                    <div class="flexbox"><!--每层 弹性布局-->
                        <div class="box-item" v-for="(item,key) of houselist" :key="key"><!--每个房间内容-->   
                                <div><!-- 图 -->
                                    <router-link to="/details">
                                        <img :src="'http://127.0.0.1:3000/img'+item.House_imgurl" alt="">
                                    </router-link>
                                </div>
                                <div class="house-buliding">
                                    <span>{{item.House_Building}}</span> <span>·</span> <span>{{item.House_Bed}}</span>
                                </div>
                                <div>
                                    <a class="house-name" href="javascirpt:;">
                                            {{item.House_name}}
                                    </a>
                                </div>"
                                <div class="house-name"><!---价格-->
                                    <span>{{(item.House_price*item.House_tag).toFixed(2)}}</span><del class="delprice">￥{{item.House_price.toFixed(2)}}</del><span class="delprice">每晚</span></div>
                                <div>
                                    <el-rate
                                    v-model="value"
                                    disabled
                                    show-score
                                    text-color="#ff9900"
                                    score-template="{value}">
                                  </el-rate>
                                  五星房东</div>
        
                        </div> 
                    </div>
                    <router-link class="getmore" to="/Search">查看更多房源></router-link>
                    
                </div>

                    <!--                 热门目的地                     -->
                    <h1 class="indextitle">热门目的地 </h1>
                <div class="btn-container">
                    <button @click="changeblue2(0)"  :class="{isblue:j==0}" class="my-btn">北京</button>
                    <button @click="changeblue2(1)"  :class="{isblue:j==1}" class="my-btn">上海</button>
                    <button @click="changeblue2(2)"  :class="{isblue:j==2}" class="my-btn">成都</button>
                    <button @click="changeblue2(3)"  :class="{isblue:j==3}" class="my-btn">重庆</button>
                    <button @click="changeblue2(4)"  :class="{isblue:j==4}" class="my-btn">广州</button>
                    <button @click="changeblue2(5)"  :class="{isblue:j==5}" class="my-btn">西安</button>
                    <button @click="changeblue2(6)"  :class="{isblue:j==6}" class="my-btn">南京</button>
                </div>
                <!-- 主题页图文 -->
                <div>
                    <div class="flexbox"><!--每层 弹性布局-->
                        <div class="box-item" v-for="(item,key) of houselist2" :key="key"><!--每个房间内容-->   
                                <div><!-- 图 -->
                                    <a href="javascirpt:;">
                                        <img :src="'http://127.0.0.1:3000/img'+item.House_imgurl" alt="">
                                    </a>
                                </div>
                                <div class="house-buliding">
                                    <span>{{item.House_Building}}</span> <span>·</span> <span>{{item.House_Bed}}</span>
                                </div>
                                <div>
                                    <a class="house-name" href="javascirpt:;">
                                            {{item.House_name}}
                                    </a>
                                </div>"
                                <div class="house-name"><!---价格-->
                                    <span>{{(item.House_price*item.House_tag).toFixed(2)}}</span><del class="delprice">￥{{item.House_price.toFixed(2)}}</del><span class="delprice">每晚</span></div>
                                <div>
                                    <el-rate
                                    v-model="value"
                                    disabled
                                    show-score
                                    text-color="#ff9900"
                                    score-template="{value}">
                                  </el-rate>
                                  五星房东</div>
        
                        </div> 
                    </div>
                    <a class="getmore" href="javascript:;">查看更多房源></a>
                    
                </div>

                
                    <!--                 精选故事                    -->
                    <h1 class="indextitle">精彩旅行故事</h1>
                <!-- 主题页图文 -->
                <div>
                    <div class="flexbox"><!--每层 弹性布局-->
                        <div class="box-item-story" v-for="(item,key) of houselist2" :key="key"><!--每个房间内容-->   
                                <div><!-- 图 -->
                                    <a href="javascirpt:;">
                                        <img :src="'http://127.0.0.1:3000/img'+item.House_imgurl" alt="">
                                    </a>
                                </div>
                                <div class="house-buliding">
                                    <span>{{item.House_Building}}</span> <span>·</span> <span>{{item.House_Bed}}</span>
                                </div>
                                <div>
                                    <a class="house-name" href="javascirpt:;">
                                            {{item.House_name}}
                                    </a>
                                </div>"
                                <div class="house-name"><!---价格-->
                                    <span>{{(item.House_price*item.House_tag).toFixed(2)}}</span><del class="delprice">￥{{item.House_price.toFixed(2)}}</del><span class="delprice">每晚</span></div>        
                        </div> 
                    </div>
                    <a class="getmore" href="javascript:;">更多精彩故事></a>
                    
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
            lp:true,
            gyh:false,
            Carousellist:[],
            i:0,
            j:1,
            value:5,
            city:"北京",
            houselist:[{
                House_Bed:"",
                House_Building:"",
                House_imgurl:"/img-index/index1.jpg",
                House_name:"",
                House_price:0,
                House_tag:""
            }],
            houselist2:[{
                House_Bed:"",
                House_Building:"",
                House_imgurl:"/img-index/index2.jpg",
                House_name:"",
                House_price:0,
                House_tag:""
            }],
            sel_list:[],
            
        }
    },
    created(){
        this.getcarouserimg(),
        this.changeblue(this.i)
        this.changeblue2(this.j)
        //this.islogin()
    },
    methods: {
        /*
        islogin(){
            this.axios.get("use/login").then(result=>{
                if(result.data.user_id){
                    this.lp=false;
                }else{
                    this.gyh=false;
                }
            })
        },
        
        */
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
            })
        },
        changeblue2(j){
            this.j=j;
            var url="/index/cities2";
            var obj={j}
            this.axios.get(url,{params:obj}).then(res=>{
              // console.log(res.data.data[0].House_imgurl)
                this.houselist2=res.data.data
            })
        },
        getstory(){
            var url="/story";
            this.axios.get(url).then(result=>{
            console.log(result.data);
            //通过sel_list[]数组来接收数据，显示在页面上
            this.sel_list=result.data;
      //console.log(this.sel_list[0].md_img,this.careStoryTop.backgroundImage );
    });
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
      width:1000px;margin-top:100px;
      margin:0 auto;
      overflow: hidden;
  }
  .indextitle{
      color:#484848;padding:10px;
      font-weight: 800!important;
      font:20px Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC"
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
    .flexbox{
        display: flex;
        flex-wrap:wrap;
        width:1000px;
        justify-content: space-between;
       
    }
    .box-item{
        width:30%;
       
        margin:5px 
    }
    .flexbox img{
        width:100%;border-radius: 5px;
    }
    .house-buliding{
        color:#714e33;
        font:10px Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC";
        font-weight: 600
    }
    .house-name{
        color:#484848;
        font:14px Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC";
    }
    .delprice{
        color:#484848;
        font:12px  Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC";
    }
    .getmore{
        color:#008489;
        font:14px Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC";
        font-weight: 600;
        padding:40px 0;display: inline-block;
    }
    .box-item-story{
        width:20%;
        margin:5px  
    }
</style>