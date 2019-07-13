<template>
  <div>
    <div class="main">
      <!-- <ul class="infinite-list" v-infinite-scroll="load">
    <li v-for="i in count" :key="i" class="infinite-list-item" >{{ i }}</li>
  </ul> -->
      <div class="story_content">
        <!-- 故事标题 -->
        <div class="story_title">
          <span>故事</span>
          <a href="javascript:;">搜索故事
            <img src="../../../../abb_serve_00/public/img/story/story_search.png" alt="">
          </a>
        </div>
        <!-- 导航栏 -->
        <!-- 1.精选故事 -->
        <el-tabs v-model="activeName" @tab-click="handleClick">
          <el-tab-pane label="精选故事" name="first">
            <div class="common_title">
              <div class="recommend_search">推荐搜索</div>
              <div style="margin-top:32px">
                <!-- 无限滚动 -->
                
                <ul class="recommend_list">
                  <!-- li可以绑定v-for -->
                  <li>
                    <div class="recommend_mask"></div>
                    <div class="recommend_text">
                      <p>上海</p>
                      <p>推荐搜索</p>
                    </div>
                    <!-- 上面覆盖一层半透明遮罩层 -->
                  </li>
                  <li>
                    <div class="recommend_text">
                      <p>成都</p>
                      <p>热门搜索</p>
                    </div>
                    <div class="recommend_mask"></div>
                  </li>
                  <li>
                    <div class="recommend_text">
                      <p>京都</p>
                      <p>本周热度</p>
                    </div>
                    <div class="recommend_mask"></div>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 故事集 -->
            <div class="common_title">
              <div class="recommend_search">故事集
                <a id="select_all" href="javascript:;">查看全部</a>
              </div>
              <div style="margin-top:32px;">
                <div class="story_collections">
                  <ul class="story_collections_list">
                    <li>
                      <div>
                        <a href="javascript:;">
                          <div>城市合辑</div>
                          <div class="collections_title">
                            <div>北京竟然有这些</div>
                            <div>不可思议的酒吧</div>
                          </div>
                        </a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <a href="javascript:;">
                          <div>城市合辑</div>
                          <div class="collections_title">
                            <div>北京竟然有这些</div>
                            <div>不可思议的酒吧</div>
                          </div>
                        </a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <a href="javascript:;">
                          <div>城市合辑</div>
                          <div class="collections_title">
                            <div>北京竟然有这些</div>
                            <div>不可思议的酒吧</div>
                          </div>
                        </a>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- 精选故事 -->
            <div class="common_title">
              <div class="recommend_search">精选故事</div>
              <div class="careful_story">
                <!-- 每一行4个 -->
                <div style="margin-top:32px;">
                  <ul class="careful_story_list">
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="careful_story">
                <!-- 每一行4个 -->
                <div style="margin-top:32px;">
                  <ul class="careful_story_list">
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="careful_story">
                <!-- 每一行4个 -->
                <div style="margin-top:32px;">
                  <ul class="careful_story_list">
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <div class="careful_story_top">
                          <div>活动</div>
                          <!-- 点赞 -->
                          <div class="story_top_zan"></div>
                        </div>
                        <div class="careful_story_detail">
                          <span>巴厘岛</span>
                          <span>旅行的意义，是一顿可以吃到中午的早餐。</span>
                        </div>
                        <div class="careful_story_user">
                          <!-- 头像 -->
                          <div class="story_user_img">
                            <img src="../../../../abb_serve_00/public/img/story/user_img_1.jpg" alt="">
                          </div>
                          <!-- <div class="story_user_num"> -->
                            <!-- 点赞 -->
                            <div class="story_user_zan"></div>
                            <!-- 数量 -->
                            <div class="story_user_zan_number">13</div>
                            <!-- 评论 -->
                            <div class="story_user_com" id="story_user_com"></div>
                            <!-- 数量 -->
                            <div class="story_user_com_number">1</div>
                          <!-- </div> -->
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </el-tab-pane>
          <el-tab-pane label="房源" name="second">
          </el-tab-pane>
          <el-tab-pane label="景点" name="third">景点</el-tab-pane>
          <el-tab-pane label="美食" name="fourth">美食</el-tab-pane>
          <el-tab-pane label="文化" name="fifth">文化</el-tab-pane>
          <el-tab-pane label="活动" name="sixth">活动</el-tab-pane>
          <el-tab-pane label="店铺" name="seventh">店铺</el-tab-pane>
        </el-tabs>
        <!-- <ul class="story_nav">
          <li class="active">精选故事</li>
          <li>房源</li>
          <li>景点</li>
          <li>美食</li>
          <li>文化</li>
          <li>活动</li>
          <li>店铺</li>
        </ul> -->
        <!-- 搜索推荐 -->
        
      </div>
    </div>
  </div>
</template>
<script>
export default {
    data() {
      return {
        activeName: 'first',//设置当前显示的是第一个标签内容
        count:0
      };
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      },
      load () {
        this.count += 2;
      }
    },
    created(){
      var url="story";
      this.axios.get(url).then(result=>{
        console.log(result);
      });
    }
  };
</script>
<style scoped>
*{
  padding:0;
  margin:0;
  box-sizing: border-box;
  font-family: Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC";
}
ul{list-style:none;}
a{text-decoration: none;}
.main{
  position: relative;
  width:1080px;
  padding:0 32px;
  margin:0 auto;
  /* border:1px solid #f00; */
}
.story_title{
  padding:6px 0;
  color: #484848;
  height: 48px;
  line-height: 48px;
}
.story_title>:first-child{
  /* margin: 0px; */
  word-wrap: break-word;
  font-size: 32px;
  font-weight: 800;
  line-height: 1.125em;
  
  /* padding:6px 0; */
}
.story_title>:nth-child(2){
  font-size:14px;
  font-weight: 400;
  float:right;
  color:#484848;
}
.story_title img{
  width:15px;
  height: 15px;
}
.story_content::after{
  content:"";
  display:table;
  clear:both;
}
/*导航栏*/ 
/*修改生成元素样式*/ 
/*
.el-tabs__nav-scroll{
  margin-top:32px !important;
}
.el-tabs__nav .is-top{
  border-bottom: 1px solid #EBEBEB !important;
  position: relative !important;
  display: inline-block !important;
  vertical-align: middle !important;
  min-width: 100%;
  margin-top:8px !important;
}
.el-tabs__item{
  float:left !important;
  padding:16px 0 !important;
  margin:0 24px 0 0 !important;
  color:#484848 !important;
  font-size:14px !important;
  font-weight: 600 !important;
  cursor: pointer !important;
}
#tab-first{
  color:#484848 !important;
}
*/
/* .el-tabs__item is-top is-active{

} */
ul.story_nav{
  border-bottom: 1px solid #EBEBEB;
  position: relative;
  display: inline-block;
  vertical-align: middle;
  min-width: 100%;
  margin-top:8px;
}
ul.story_nav>li{
  float:left;
  padding:16px 0;
  margin:0 24px 0 0;
  color:#484848;
  font-size:14px;
  font-weight: 600;
  cursor: pointer;
}
ul.story_nav>li.active{
  color:#008489;
  border-bottom: 2px solid #008489;
}
.common_title{
  margin-top:32px;
  position: relative;
}
/*推荐搜索*/ 
.recommend_search{
  word-wrap: break-word;
  font-size: 24px;
  font-weight: 800;
  line-height: 1.25em;
  color: #484848;
  padding:2px 0;
}
ul.recommend_list{
  /* width: 156px; */
  height: 156px;
  margin:0 -8px;
}
ul.recommend_list::before{
  content:"";
  display:table;
}
ul.recommend_list::after{
  content:"";
  display:table;
  clear:both;
}
ul.recommend_list>li{
  display: block;
  position: relative;
  float:left;
  width: 156px;
  height:156px;
  background-image:url(../../../../abb_serve_00/public/img/story/recommend_city_1.jpg);
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  background-blend-mode: multiply !important;
  margin:0 8px;
  text-align: center;
  /* 设置边框为圆角 */
  border-radius: 10px;
  cursor: pointer;
}
ul.recommend_list>li>div.recommend_mask{
  position:absolute;
  top:0;
  left:0;
  width:156px;
  height: 156px;
  border-radius: 10px;
  /* 背景色需要考究 */
  background-image:url(../../../../abb_serve_00/public/img/story/recommend_cityhide_1.jpg);
  z-index: 0;
  opacity:0.70; 
}
.recommend_text{
  z-index: 999;
}
.recommend_text>:first-child{
  margin-top:44px;
  font-size: 24px;
  font-weight: 600;
  color:#000;
  z-index: 1000;
}
.recommend_text>:last-child{
  margin-top:8px;
  font-size: 14px;
  font-weight: 600;
  color:#000;
}
#select_all{
  float:right;
  font-size:14px;
  color:#484848;
}
#select_all:hover{
  text-decoration: underline;
}
.story_collections{
  height:164px;

}
.story_collections::before{
  content:"";
  display:table;
}
.story_collections::after{
  content:"";
  display:table;
  clear:both;
}
ul.story_collections_list{
  display:flex;
  justify-content: space-between;
}
ul.story_collections_list>li{
  position:relative;
  /* margin:0 8px; */
  float:left;
  background:linear-gradient(rgba(129, 129, 129, 0), rgba(129, 129, 129, 0.9)),url(../../../../abb_serve_00/public/img/story/story_collection_1.jpg);
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  width:328px;
  height:164px;
  border-radius: 8px;
  cursor: pointer;
}
ul.story_collections_list>li>div{
  position: absolute;
  left: 16px;
  bottom: 16px;
}
ul.story_collections_list>li a>div:first-child{
  display: inline;
  padding:2px 8px 4px 8px;
  color:#484848;
  background-color:#fff;
  border-radius: 4px;
  font-size:12px;
  font-weight: 600px;
}
.collections_title{
  margin-top:8px;
}
.collections_title>div{
  color: #fff;
  font-size: 22px;
  line-height: 28px;
  font-weight: 700;
}
/*精选故事*/
ul.careful_story_list{
  display:flex;
  justify-content: space-between;
}
ul.careful_story_list>li{
  width:242px;
  
}
ul.careful_story_list>li .careful_story_top{
  width:242px;
  height: 242px;
  background-image:url(../../../../abb_serve_00/public/img/story/story_carefulSelect_1.jpg);
  background-position: center center;
  background-size: cover;
  background-repeat: no-repeat;
  border-radius: 8px;
  position:relative;
}
.careful_story_top>div:first-child{
  position: absolute;
  background-color: #fff;
  bottom: 8px;
  right: 8px;
  padding: 2px 8px 4px 8px;
  border-radius: 4px;
  font-size: 12px;
  color:#484848;
  font-weight: 800;
}
.story_top_zan{
  position: absolute;
  right:8px;
  top:8px;
  width:24px;
  height: 24px;
  background-image: url(../../../../abb_serve_00/public/img/story/zan1_while.png);
  background-size: cover;
  background-position: center center;
  border-radius: 4px;
  
}
/* .story_top_zan:hover{
  background-image: url(../../../../abb_serve_00/public/img/story/zan1_blank.png);
}当点赞时，变颜色，再点一次，更换颜色 
*/
.careful_story_detail{
  margin-top: 8px;
  line-height: 18px;
  max-height: 36px;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 14px;
  line-height: 1.2857142857142858em;
  color: #484848;
}
.careful_story_detail>:first-child{
  display:inline-block;
  margin-right:4px;
  font-weight: 800;
}
.careful_story_detail>:last-child{
  font-weight: 400;
}
.careful_story_user{
  margin-top: 4px;
  /* margin-left: -1.6px; */
  /* vertical-align: middle; */
  height: 24px;
  /* display:table-cell; */
}
.careful_story_user>div{
  float:left;
  
}
.careful_story_user::before{
  content:"";
  display:table;
}
.careful_story_user::after{
  content:"";
  display:table;
  clear:both;
}
.careful_story_user>.story_user_img>img{
  width:20px;
  height: 20px;
  border-radius:50%;
}
.story_user_zan,.story_user_com{
  width:15px;
  height: 15px;
  background-image: url(../../../../abb_serve_00/public/img/story/zan_black.png);
  background-size: cover;
  background-position: center center;
  margin-top:3px;
}
.story_user_com{
  width:13px;
  height: 13px;
  background-image: url(../../../../abb_serve_00/public/img/story/comment_black1.png);
  margin-top:5px;
}
.story_user_zan_number,.story_user_com_number{
  font-size:12px;
  font-weight: 400;
  color:#484848;
}
.careful_story_user>div:not(:first-child){
  margin-top:4px;
  margin-left:8px;
}
#story_user_com{
  margin-top:7px;
}
</style>