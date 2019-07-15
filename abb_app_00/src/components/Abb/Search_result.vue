<template>
  <div>
    <div class="data_main">
      <div class="result_title">
        <div class="result_left">
          <div>北京</div>
          <div>搜索结果</div>
        </div>
        <div class="return_btn">返回故事</div>
      </div>
      <div style="margin:32px 0;">
        <div style="common_title">
          <div class="story_class">
            故事类别
          </div>
          <div style="margin-top:16px;">
            <!-- 视口 -->
            <div class="class_carousel">  
              <ul class="class_carousel_ul">
                <li>
                  <div class="carousel_img"></div>
                  <div class="carousel_text">
                    <div>景点</div>
                    <div>158</div>
                  </div>
                </li>
                <li>
                  <div class="carousel_img"></div>
                  <div class="carousel_text">
                    <div>景点</div>
                    <div>158</div>
                  </div>
                </li>
                <li>
                  <div class="carousel_img"></div>
                  <div class="carousel_text">
                    <div>景点</div>
                    <div>158</div>
                  </div>
                </li>
                <li>
                  <div class="carousel_img"></div>
                  <div class="carousel_text">
                    <div>景点</div>
                    <div>158</div>
                  </div>
                </li>
                <li>
                  <div class="carousel_img"></div>
                  <div class="carousel_text">
                    <div>景点</div>
                    <div>158</div>
                  </div>
                </li>
                <li>
                  <div class="carousel_img"></div>
                  <div class="carousel_text">
                    <div>景点</div>
                    <div>158</div>
                  </div>
                </li>
              </ul>
              <div class="btn_carousel">
                <div class="btn_left">
                </div>
                <div class="btn_right">
                </div>
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
  data(){

  }
}
</script>
<style>
*{
  padding:0;
  margin:0;
  box-sizing: border-box;
  font-family: Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC";
}
ul{list-style:none;}
a{text-decoration: none;}
.data_main{
  position: relative;
  width:1080px;
  padding:0 32px;
  margin:0 auto;
}
.result_title{
  position:relative;
  margin-top: 32px;
}
.result_left{
  color: #484848;
}
.result_left>:first-child{
  padding: 6px 0;
  font-size: 32px;
  font-weight: 800;
  line-height: 1.125em; 
}
.result_left>:last-child{
  margin: 0px;
  word-wrap: break-word;
  font-size: 16px;
  font-weight: 400;
  line-height: 1.375em;
}
.return_btn{
  position: absolute;
  top:22px;
  right:0px;
  border:1px solid rgb(0, 132, 137);
  text-align: center;
  padding:6px 15px;
  color: #008489;
  background: transparent;
  border-radius: 5px; 
  font-weight:600px;
  font-size:14px;
  cursor: pointer;
}
.common_title{
  margin-top:32px;
  position: relative;
}
.story_class{
  word-wrap: break-word;
  font-size: 24px;
  font-weight: 800;
  line-height: 1.25em;
  color: #484848;
  padding:2px 0;
}
.class_carousel{
  overflow: hidden;
  width:1032px;
  height:74px;
  position: relative;
}
ul.class_carousel_ul>li{
  float:left;
  width:240px;
  height:74px;
  padding:0 8px;
  border:1px solid #ededed;
  position: relative;
  border-radius: 3px;
  margin:0px 8px;
}

.class_carousel_ul .carousel_img{
  width:96px;
  height:72px;
  background-image:url(../../../../abb_serve_00/public/img/story/story_search_list_1.jpg);
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  position: absolute;
  top:0;
  left:0px;
}
.class_carousel_ul .carousel_text{
  position: absolute;
  top:14px;
  left:112px;
}
.btn_carousel{
  position: absolute;
  top:0px;

}

</style>
