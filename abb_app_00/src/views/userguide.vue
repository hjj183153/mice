<template>
  <div>
    <user-header></user-header>
    <div class="guide">
      <div class="guide_top">
        <div style="font-size:30px;">旅游指南</div>
        <div style="font-size:15px;">由爱彼迎房东为您精选每座城市的最佳去处。从咖啡馆、公园，到鲜为人知的隐秘景点，应有尽有，现在就来探索吧。</div>
      </div>
      <div class="guide_bottom">
        <div style="font-size:30px;margin-bottom:20px;">北京</div>
        <el-row>
          <el-col :span="12">
            <div class="grid-content bg-purple-dark bigimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_san_francisco_carousel@2x.jpg)">
            </div>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="margin-bottom:20px;background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_new_york_carousel@2x.jpg)"></div>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_los_angeles_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="margin-bottom:20px;background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_chicago_carousel@2x.jpg)"></div>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_seattle_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple-dark smallimg" style="margin-bottom:20px;background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_vancouver_carousel@2x.jpg)"></div>
            <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_boston_carousel@2x.jpg)"></div>
          </el-col>
          <el-col :span="12">
            <el-row>
              <div class="grid-content bg-purple-dark bigimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_montreal_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="margin-bottom:20px;background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_portland_carousel@2x.jpg)"></div>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_philadelphia_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_san_diego_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_phoenix_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_d.c._carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_new_orleans_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
        </el-row>
        <div style="font-size:30px;margin-bottom:20px;">上海</div>
        <el-row>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_prague_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_budapest_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_stockholm_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_florence_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="12">
            <div class="grid-content bg-purple-dark bigimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_amsterdam_carousel@2x.jpg)"></div>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="margin-bottom:20px;background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_berlin_carousel@2x.jpg)"></div>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_rome_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="margin-bottom:20px;background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_barcelona_carousel@2x.jpg)"></div>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_copenhagen_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple-dark smallimg" style="margin-bottom:20px;background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_melbourne_carousel@2x.jpg)"></div>
            <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_buenos_aires_carousel@2x.jpg)"></div>
          </el-col>
          <el-col :span="12">
            <el-row>
              <div class="grid-content bg-purple-dark bigimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_london_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
          <el-col :span="6">
            <el-row>
              <div class="grid-content bg-purple-dark smallimg" style="margin-bottom:20px;background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_sao_paulo_carousel@2x.jpg)"></div>
              <div class="grid-content bg-purple-dark smallimg" style="background-image:url(https://z1.muscache.cn/airbnb/guidebook/v1_new_york_carousel@2x.jpg)"></div>
            </el-row>
          </el-col>
        </el-row>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  methods: {}
};
</script>
<style scoped>
.guide {
  width: 1080px;
  margin: 0 auto;
  margin-top: 30px;
  margin-bottom: 30px;
}
.guide_top {
  padding: 20px 0;
  border-top: 1px solid #000;
  border-bottom: 1px solid #000;
  margin-bottom: 30px;
}
.el-row {
  margin-bottom: 20px;
}
.el-col {
  border-radius: 4px;
}
.bg-purple-dark {
  background: #99a9bf;
}
.bg-purple {
  background: #d3dce6;
}
.bg-purple-light {
  background: #e5e9f2;
}
.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
.row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}
.bigimg {
  width: 420px;
  height: 280px;
  background-size: cover;
}
.smallimg {
  width: 200px;
  height: 130px;
  background-size: cover;
}
</style>