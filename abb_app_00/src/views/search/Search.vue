<template>
<<<<<<< HEAD
<div>
  <user-header></user-header>
=======
>>>>>>> d77b1a009be8c3702af1dbaa7be73029f9a248f9
  <div class="search">
    <div class="search-nav-container _i8vcof">
      <div>
        <div class="btn-box">
          <el-button
            plain
            id="SearchBtn"
            v-on:click="change($event,0)"
            :style="active[0]?isActive:noActive"
            ref="box"
          >日期</el-button>
          <div class="search-condition" v-show="active[0]">
            <div class="search-condition-detail">
              <el-date-picker
                v-model="date"
                type="daterange"
                range-separator="至"
                start-placeholder="开始日期"
                end-placeholder="结束日期"
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
              ></el-date-picker>
            </div>
            <div class="search-ctrl">
              <span>
                <a href="javascript:;">取消</a>
              </span>
              <span>
                <a href="javascript:;" @click="access">确定</a>
              </span>
            </div>
          </div>
        </div>

        <div class="btn-box">
          <el-button
            plain
            id="SearchBtn"
            v-on:click="change($event,1)"
            :style="active[1]?isActive:noActive"
          >人数</el-button>
          <div class="search-condition" v-show="active[1]">
            <div class="search-condition-detail">
              <div class="s-people">
                <div class="people-num-detail">
                  <span>成人</span>
                  <el-input-number
                    size="mini"
                    v-model="num1"
                    @change="handleChange"
                    :min="0"
                    :max="50"
                    label="描述文字"
                  ></el-input-number>
                </div>
                <div class="people-num-detail">
                  <span>儿童</span>
                  <el-input-number
                    size="mini"
                    v-model="num2"
                    @change="handleChange"
                    :min="0"
                    :max="50"
                    label="描述文字"
                  ></el-input-number>
                </div>
                <div class="people-num-detail">
                  <span>婴儿</span>
                  <el-input-number
                    size="mini"
                    v-model="num3"
                    @change="handleChange"
                    :min="0"
                    :max="50"
                    label="描述文字"
                  ></el-input-number>
                </div>
              </div>
            </div>
            <div class="search-ctrl">
              <span>
                <a href="javascript:;">取消</a>
              </span>
              <span>
                <a href="javascript:;">确定</a>
              </span>
            </div>
          </div>
        </div>

        <div class="btn-box">
          <el-button
            plain
            id="SearchBtn"
            v-on:click="change($event,2)"
            :style="active[2]?isActive:noActive"
          >房源类型</el-button>
          <div class="search-condition" v-show="active[2]">
            <div class="search-condition-detail">
              <el-checkbox-group v-model="checkList">
                <el-checkbox label="整个房源"></el-checkbox>
                <el-checkbox label="独立房间"></el-checkbox>
                <el-checkbox label="合住房间"></el-checkbox>
              </el-checkbox-group>
            </div>
            <div class="search-ctrl">
              <span>
                <a href="javascript:;">取消</a>
              </span>
              <span>
                <a href="javascript:;">确定</a>
              </span>
            </div>
          </div>
        </div>

        <div class="btn-box">
          <el-button
            plain
            id="SearchBtn"
            v-on:click="change($event,3)"
            :style="active[3]?isActive:noActive"
          >价格</el-button>
          <div class="search-condition" v-show="active[3]">
            <div class="search-condition-detail">
              <el-slider v-model="price[0]" :min="50" :max="4999" show-input></el-slider>
              <el-slider v-model="price[1]" :min="price[0]+1" :max="5000" show-input></el-slider>
            </div>
            <div class="search-ctrl">
              <span>
                <a href="javascript:;">取消</a>
              </span>
              <span>
                <a href="javascript:;">确定</a>
              </span>
            </div>
          </div>
        </div>

        <div class="btn-box">
          <el-button
            plain
            id="SearchBtn"
            v-on:click="change($event,4)"
            :style="active[4]?isActive:noActive"
          >闪购</el-button>
          <div class="search-condition" v-show="active[4]">
            <div class="search-condition-detail">
              <el-switch v-model="flash" active-text="闪购" inactive-text="无"></el-switch>
            </div>
            <div class="search-ctrl">
              <span>
                <a href="javascript:;">取消</a>
              </span>
              <span>
                <a href="javascript:;">确定</a>
              </span>
            </div>
          </div>
        </div>

        <div class="btn-box">
          <el-button
            plain
            id="SearchBtn"
            v-on:click="change($event,5)"
            :style="active[5]?isActive:noActive"
          >位置区域</el-button>
          <div class="search-condition" v-show="active[5]">
            <div class="search-condition-detail">
              <el-tabs v-model="activeName" @tab-click="handleClick">
                <el-tab-pane label="热点" name="first">热点</el-tab-pane>
                <el-tab-pane label="行政区" name="second">
                  <div class="search-district" v-for="(item,index) of disList" :key="index">
                    <a
                      href="javascript:;"
                      :data-latitude="item.District_latitude"
                      :data-longitude="item.District_longitude"
                      @click="SearchByArea($event)"
                    >{{item.District_name}}</a>
                  </div>
                </el-tab-pane>
                <el-tab-pane label="商圈" name="third">商圈</el-tab-pane>
                <el-tab-pane label="景点" name="fourth">景点</el-tab-pane>
              </el-tabs>
            </div>
            <div class="search-ctrl">
              <span>
                <a href="javascript:;">取消</a>
              </span>
              <span>
                <a href="javascript:;">确定</a>
              </span>
            </div>
          </div>
        </div>

        <!-- <div class="btn-box">
          <el-button
            plain
            id="SearchBtn"
            v-on:click="change($event,6)"
            :style="active[6]?isActive:noActive"
          >更多筛选条件</el-button>
          <div class="search-condition" v-show="active[6]">
            <div class="search-condition-detail">
              <el-form
                :model="ruleForm"
                :rules="rules"
                ref="ruleForm"
                label-width="100px"
                class="demo-ruleForm"
              >
                <el-form-item label="活动名称" prop="name">
                  <el-input v-model="ruleForm.name"></el-input>
                </el-form-item>
                <el-form-item label="活动区域" prop="region">
                  <el-select v-model="ruleForm.region" placeholder="请选择活动区域">
                    <el-option label="区域一" value="shanghai"></el-option>
                    <el-option label="区域二" value="beijing"></el-option>
                  </el-select>
                </el-form-item>
                <el-form-item label="活动时间" required>
                  <el-col :span="11">
                    <el-form-item prop="date1">
                      <el-date-picker
                        type="date"
                        placeholder="选择日期"
                        v-model="ruleForm.date1"
                        style="width: 100%;"
                      ></el-date-picker>
                    </el-form-item>
                  </el-col>
                  <el-col class="line" :span="2">-</el-col>
                  <el-col :span="11">
                    <el-form-item prop="date2">
                      <el-time-picker
                        placeholder="选择时间"
                        v-model="ruleForm.date2"
                        style="width: 100%;"
                      ></el-time-picker>
                    </el-form-item>
                  </el-col>
                </el-form-item>
                <el-form-item label="即时配送" prop="delivery">
                  <el-switch v-model="ruleForm.delivery"></el-switch>
                </el-form-item>
                <el-form-item label="活动性质" prop="type">
                  <el-checkbox-group v-model="ruleForm.type">
                    <el-checkbox label="美食/餐厅线上活动" name="type"></el-checkbox>
                    <el-checkbox label="地推活动" name="type"></el-checkbox>
                    <el-checkbox label="线下主题活动" name="type"></el-checkbox>
                    <el-checkbox label="单纯品牌曝光" name="type"></el-checkbox>
                  </el-checkbox-group>
                </el-form-item>
                <el-form-item label="特殊资源" prop="resource">
                  <el-radio-group v-model="ruleForm.resource">
                    <el-radio label="线上品牌商赞助"></el-radio>
                    <el-radio label="线下场地免费"></el-radio>
                  </el-radio-group>
                </el-form-item>
                <el-form-item label="活动形式" prop="desc">
                  <el-input type="textarea" v-model="ruleForm.desc"></el-input>
                </el-form-item>
                <el-form-item>
                  <el-button type="primary" @click="submitForm('ruleForm')">立即创建</el-button>
                  <el-button @click="resetForm('ruleForm')">重置</el-button>
                </el-form-item>
              </el-form>
            </div>
            <div class="search-ctrl">
              <span>
                <a href="javascript:;">取消</a>
              </span>
              <span>
                <a href="javascript:;">确定</a>
              </span>
            </div>
          </div>
        </div>-->
      </div>
    </div>
    <div class="search-container">
      <div class="search-index">
        <h3 id='datanum' class="search-num">超过300个房源</h3>
        <div class="search-subject">
          <SearchCard
            v-for="(item,i) of dataList"
            :key="i"
            :House_name="item.House_name"
            :House_Amenities="item.House_Amenities"
            :House_Bed="item.House_Bed"
            :House_Building="item.House_Building"
            :House_price="item.House_price"
            :House_tag="item.House_tag"
            :House_type="item.House_type"
            :House_detail="item.House_detail"
<<<<<<< HEAD
            :House_id="item.House_id"
            :House_imgurl="item.House_imgurl"
            ></SearchCard>
=======
          ></SearchCard>
>>>>>>> d77b1a009be8c3702af1dbaa7be73029f9a248f9
        </div>
      </div>
      <div id="mapBox" class="search-map-box">
        <div ref="map" id="map" class="search-map"></div>
      </div>
    </div>
    <div class="search-mask" v-show="mask"></div>
  </div>
</template>
<script>
import SearchCard from "./Search-card.vue";
//import BMapLib from 'BMapLib';
export default {
  name: "Map",
  data() {
    return {
      active: [false, false, false, false, false, false, false],
      isActive: { background: "#008489", color: "#fff" },
      noActive: {
        background: "#fff",
        color: "#484848",
        border: "1px solid #ccc"
      },

      windowHeight: "",
      City_id: 2,
      disList: "",
      latitude:'',
      longitude:'',
      dataList: "",
      mask: false,
      date: "",
      num1: 1,
      num2: 0,
      num3: 0,
      checkList: [],
      price: [50, 5000],
      flash: false,
      activeName: "first",
      ruleForm: {
        name: "",
        region: "",
        date1: "",
        date2: "",
        delivery: false,
        type: [],
        resource: "",
        desc: ""
      },
      rules: {
        name: [
          { required: true, message: "请输入活动名称", trigger: "blur" },
          { min: 3, max: 5, message: "长度在 3 到 5 个字符", trigger: "blur" }
        ],
        region: [
          { required: true, message: "请选择活动区域", trigger: "change" }
        ],
        date1: [
          {
            type: "date",
            required: true,
            message: "请选择日期",
            trigger: "change"
          }
        ],
        date2: [
          {
            type: "date",
            required: true,
            message: "请选择时间",
            trigger: "change"
          }
        ],
        type: [
          {
            type: "array",
            required: true,
            message: "请至少选择一个活动性质",
            trigger: "change"
          }
        ],
        resource: [
          { required: true, message: "请选择活动资源", trigger: "change" }
        ],
        desc: [{ required: true, message: "请填写活动形式", trigger: "blur" }]
      }
    };
  },
  components: {
    SearchCard
  },
  methods: {
    //访问后台接口
    SearchAxios() {
      var url = "http://127.0.0.1:3000/search";
      this.axios
        .get(url, {
          params: {
            House_City_id: this.City_id,
            Time_start: "",
            Time_end: "",
            people: "",
            children: "",
            baby: "",
            price: [this.price[0], this.price[1]],
            latitude:this.latitude,
            longitude:this.longitude
          }
        })
        .then(result => {
          //console.log(result.data);
          this.dataList = result.data;
<<<<<<< HEAD
          console.log(this.dataList);
          if(this.dataList==''){
            var datanum=document.getElementById('datanum');
            datanum.innerHTML='未有符合条件房源,请重新筛选'
          }else{
            var datanum=document.getElementById('datanum');
            datanum.innerHTML='超过300条房源'
          }
          //console.log(that);
          this.drawMap(that);
=======
>>>>>>> d77b1a009be8c3702af1dbaa7be73029f9a248f9
        });
    },
    //获取区域
    SearchDIS() {
      var url = "http://127.0.0.1:3000/searchdis";
      this.axios
        .get(url, {
          params: {
            City_id: this.City_id,
            District_name: ""
          }
        })
        .then(result => {
          console.log(result.data.data);
          this.disList = result.data.data;
        });
    },
    SearchByArea(e){
      //区域纬度
      console.log(e.target.dataset.latitude);
      //区域经度
      console.log(e.target.dataset.longitude);
      this.latitude=e.target.dataset.latitude;
      this.longitude=e.target.dataset.longitude;
      this.SearchAxios();
    },
    //加载地图模块高度
    mapHeight() {
      this.windowHeight = window.screen.availHeight;
      console.log(this.windowHeight + "px");
      var mapbox = document.getElementById("mapBox");
      mapbox.style.height = this.windowHeight + "px";
    },
    //创建地图
    createMap() {
      /* eslint-disable */
      // 创建Map实例
      var map = new BMap.Map("map");
      // 初始化地图,设置中心点坐标和地图级别
      map.centerAndZoom(new BMap.Point(116.10, 39.93), 11);
      //添加地图类型控件
      map.addControl(
        new BMap.MapTypeControl({
          mapTypes: [BMAP_NORMAL_MAP, BMAP_HYBRID_MAP]
        })
      );
      // 设置地图显示的城市 此项是必须设置的
      map.setCurrentCity("北京");
      //开启鼠标滚轮缩放
      map.enableScrollWheelZoom(true);

      // //标注
      // var point = new BMap.Point(116.404, 39.915); // 创建标注
      // var marker = new BMap.Marker(point);
      //  map.addOverlay(marker);

      //创建测试用经纬度
      var x = [116.404, 116.414, 116.424]; // 测试用的3个点的经度
      var y = [39.915, 39.905, 39.895]; //测试用的3个点的纬度
      for (var i = 0; i < x.length; i++) {
        var point = new BMap.Point(x[i], y[i]); //根据经纬度创建地图上的一个点
        map.centerAndZoom(point, 15); //设置范围
        var marker = new BMap.Marker(point); //根据点来创建点状覆盖物
        map.addOverlay(marker); //把这个覆盖物加载到地图上
      }
      var htm =
        "<div style='background:#E7F0F5;color:#0082CB;border:1px solid #333'>" +
        "欢迎使用百度地图！" +
        "<img src='http://map.baidu.com/img/logo-map.gif' border='0' />" +
        "</div>";
      var obj1 = {
        html: `<el-date-picker
                v-model="date"
                type="daterange"
                range-separator="至"
                start-placeholder="开始日期"
                end-placeholder="结束日期"
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
              ></el-date-picker>123`
      };
      var htm = obj1.html;

      var point = new BMap.Point(116.404, 39.915);
      var myRichMarkerObject = new BMapLib.RichMarker(htm, point, {
        anchor: new BMap.Size(0, -20),
        enableDragging: false
      });
      map.addOverlay(myRichMarkerObject);

      //myRM.disableDragging();//设置Marker不能拖拽 否则是enableDragging();
      //map.addOverlay(myRM);// 设置显示覆盖物标志

      //点击标注
      // marker.addEventListener("click", function() {
      //   console.log("您点击了标注");
      // });

      //事件
      //点击地图事件
      map.addEventListener("click", function() {
        console.log("您点击了地图。");
      });
      //拖拽地图事件
      map.addEventListener("dragend", function() {
        var center = map.getCenter();
        console.log("地图中心点变更为：" + center.lng + ", " + center.lat);
      });

      /* eslint-enable */
    },
    //修改筛选按钮样式
    change(event, index) {
      //获取点击对象
      //console.log(index);
      console.log(event.target);
      if (this.active[index]) {
        this.active = this.active.map((item, index, arr) => {
          return false;
        });
      } else {
        this.active = this.active.map((item, index, arr) => {
          return false;
        });
        this.active[index] = true;
      }

      // if(index<=6){
      //   this.mask=true;
      // }else{
      //   this.mask=!this.mask;
      // }
    },
    //筛选条件方法,计数器改变
    handleChange(value) {
      console.log(value);
    },
    //tab
    handleClick(tab, event) {
      console.log(tab, event);
    },
    //表单
    submitForm(formName) {
      this.$refs[formName].validate(valid => {
        if (valid) {
          alert("submit!");
        } else {
          console.log("error submit!!");
          return false;
        }
      });
    },
    resetForm(formName) {
      this.$refs[formName].resetFields();
    },

    access() {
      //获取日期筛选条件
      console.log(this.date);
      //获取人数
      console.log("成人" + this.num1, "儿童" + this.num2, "婴儿" + this.num3);
      //获取房间类型
      console.log(this.checkList);
      //获取价格
      console.log("低" + this.price[0], "高" + this.price[1]);
    }
  },

  mounted() {
    this.mapHeight();
    this.createMap();
  },
  created() {
    //解决点击其他位置时关闭active
    document.addEventListener("click", e => {
      console.log(e.target);
      // if(!this.$refs.box.contains(e.target)){
      //   this.active[0]=false;
      // }
      if (e.target != "button") {
        // this.active = this.active.map((item, index, arr) => {
        //   return false;
        // });
      }
    });

    //访问接口
    this.SearchDIS();
    this.SearchAxios();
  }
};
</script>

<style scoped>
#SearchBtn {
  background: #fff;
  color: #484848;
  border: 1px solid #ccc;
}
.search-nav-container {
  position: relative;
  border-bottom: 1px solid #cccccc;
  z-index: 30;
}
._i8vcof {
  display: flex;
  align-items: center;
  position: relative;
  width: 100%;
  z-index: 4;
  height: 48px;
  background: rgb(255, 255, 255);
  border-bottom: 0px;
  box-sizing: border-box;
  padding: 0 26px;
}
.el-button {
  display: inline-block;
  line-height: 0.5;
  white-space: nowrap;
  cursor: pointer;
  background: #fff;
  border: 1px solid #dcdfe6;
  color: #606266;
  -webkit-appearance: none;
  text-align: center;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  outline: 0;
  margin: 0;
  -webkit-transition: 0.1s;
  transition: 0.1s;
  font-weight: 500;
  -moz-user-select: none;
  padding: 12px 20px;
  font-size: 14px;
  border-radius: 4px;
}
.el-button {
  margin-left: 10px;
}
.active {
  color: rgb(255, 255, 255);
  background: rgb(0, 132, 137);
}
.search-container {
  padding: 20px 26px 40px 26px;
  display: flex;
  justify-content: space-between;
  box-sizing: border-box;
  border-top: 1px solid #cccccc;
}
.search-num {
  margin-bottom: 0px !important;
  font-size: 24px !important;
  line-height: 30px !important;
  letter-spacing: normal !important;
  font-family: Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑",
    "Microsoft YaHei", "Heiti SC" !important;
  text-transform: undefined !important;
  color: #484848 !important;
  margin-left: 9px;
}
.search-index {
  width: 60%;
  overflow-y: scroll;
}
.search-map-box {
  width: 40%;
  position: fixed;
  top: 0;
  right: 0;
  border-left: 1px solid #cccccc;
}
.search-map {
  width: 100%;
  height: 100%;
}
.search-subject {
  box-sizing: border-box;
  padding-top: 20px;
  padding-right: 35px;
}
.el-button[data-v-633a08e5] {
  margin-left: 0;
}
.btn-box {
  position: relative;
  margin-left: 10px;
  display: inline-block;
}
.search-condition {
  position: absolute;
  left: 0;
  top: 45px;
  padding: 24px;
  min-width: 400px;
  border: 1px solid #ccc;
  box-sizing: border-box;
  background: #fff;
  box-shadow: 1px 1px 3px 1px rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  display: flex;
  flex-direction: column;
  z-index: 999;
}
.people-num-detail {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 5px 0;
}
span.el-checkbox__label {
  display: inline-block;
  padding: 10px !important;
  line-height: 30px !important;
  font-size: 20px !important;
}
.el-checkbox {
  font-weight: 700;
}
.search-ctrl {
  margin-top: 20px;
  width: 100%;
  display: flex;
  justify-content: space-between;
}
.search-district {
  width: 100px;
  height: 40px;
  text-align: center;
  float: left;
  margin: 5px 5px 5px;
  box-sizing: border-box;
  line-height: 40px;
  /* border:1px solid #ccc;
  border-radius: 10px; */
}
.search-district a {
  color: rgb(72, 72, 72);
}
.search-district a:hover {
  color: rgb(0, 132, 137);
}
/* .search-mask {
  position: fixed;
  top: 48px;
  left: 0;
  background: #22222233;
  width: 100%;
  height: 100%;
  z-index:10;
} */

/* .search {
  transform: translate(0);
} */
</style>

