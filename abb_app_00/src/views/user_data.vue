<template>
  <div class="user_data">
    <div class="data_left">
      <ul>
        <li v-for="(elem,i) of list" :key="i">{{elem}}</li>
      </ul>
      <el-button>查看个人资料</el-button>
    </div>
    <div class="data_right">
      <div class="title">必填</div>
      <el-form ref="form" label-width="200px">
        <el-form-item label="用户名">
          <el-input></el-input>
        </el-form-item>
        <el-form-item label="我是">
          <select id="user_sex" name="user[sex]">
            <option value selected="selected">性别</option>
            <option value="1">男性</option>
            <option value="0">女性</option>
            <option value="-1">保密</option>
          </select>
        </el-form-item>
        <el-form-item label="出生日期">
          <el-date-picker align="right" type="date" placeholder="选择日期"></el-date-picker>
        </el-form-item>
        <el-form-item label="电子邮件地址">
          <el-input></el-input>
        </el-form-item>
        <el-form-item label="手机号">
          <el-input></el-input>
        </el-form-item>
        <el-form-item label="首选语言">
          <select>
            <option>Bahasa Indonesia</option>
            <option>Bahasa Melayu</option>
            <option>Català</option>
            <option>Dansk</option>
            <option>Deutsch</option>
            <option>English</option>
            <option>Español</option>
            <option>Eλληνικά</option>
            <option>Français</option>
            <option>Hrvatski</option>
            <option>Italiano</option>
            <option>Magyar</option>
            <option>Nederlands</option>
            <option>Norsk</option>
            <option>Polski</option>
            <option>Português</option>
            <option>Suomi</option>
            <option>Svenska</option>
            <option>Türkçe</option>
            <option>Íslenska</option>
            <option>Čeština</option>
            <option>Русский</option>
            <option>עברית</option>
            <option>العربية</option>
            <option>ภาษาไทย</option>
            <option selected="selected">中文 (简体)</option>
            <option>中文 (繁體)</option>
            <option>日本語</option>
            <option>한국어</option>
          </select>
        </el-form-item>
        <el-form-item label="首选货币">
          <select>
            <option>澳大利亚元</option>
            <option>阿联酋迪拉姆</option>
            <option>保加利亚列弗</option>
            <option>波兰兹罗提</option>
            <option>巴西雷亚尔</option>
            <option>丹麦克朗</option>
            <option>俄罗斯卢布</option>
            <option>菲律宾比索</option>
            <option>港币</option>
            <option>哥伦比亚比索</option>
            <option>哥斯达黎加科朗</option>
            <option>韩元</option>
            <option>捷克克朗</option>
            <option>加拿大元</option>
            <option>克罗地亚库纳</option>
            <option>罗马尼亚列伊</option>
            <option>摩洛哥迪拉姆</option>
            <option>秘鲁索尔</option>
            <option>马来西亚林吉特</option>
            <option>墨西哥比索</option>
            <option>美元</option>
            <option>南非兰特</option>
            <option>挪威克朗</option>
            <option>欧元</option>
            <option>瑞典克朗</option>
            <option selected="selected">人民币</option>
            <option>瑞士法郎</option>
            <option>日元</option>
            <option>沙特里亚尔</option>
            <option>新台币</option>
            <option>土耳其里拉</option>
            <option>泰铢</option>
            <option>乌拉圭比索</option>
            <option>新加坡元</option>
            <option>新西兰元</option>
            <option>匈牙利福林</option>
            <option>英镑</option>
            <option>印度卢比</option>
            <option>以色列新谢克尔</option>
            <option>智利比索</option>
          </select>
        </el-form-item>
				<el-form-item label="您住的地方">
          <el-input placeholder="例如，法国巴黎 / 纽约布鲁克林 / 伊利诺伊州芝加哥"></el-input>
        </el-form-item>
				<el-form-item label="您住的地方">
					<textarea cols="40" rows="5"></textarea>
					<div>爱彼迎以相互信任为基础，请帮助其他人了解您。<br> 告诉他们您喜欢什么，您离开了哪几样东西就不能活？分享您最喜爱的旅游目的地、书籍、电影、电视节目、音乐以及美食。<br>告诉他们您会是个什么样的房东或房客，您旅游的风格是怎样的，您作为爱彼迎房东的风格又如何。<br>您也可以向大家介绍一下自己的人生格言。</div>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: ["编辑个人资料", "照片", "信任和验证", "评价", "推荐语"]
    };
  },
  methods: {}
};
</script>
<style scoped>
.user_data {
  width: 1056px;
  margin: 0 auto;
  margin-top: 20px;
}
.data_left {
  width: 20%;
  float: left;
}
.data_right {
  width: 80%;
  height: 500px;
  float: right;
  border: 1px solid rgba(191, 191, 191, 0.2);
  box-sizing: border-box;
}
.data_left ul li {
  margin-bottom: 15px;
}
.data_left ul li:hover {
  cursor: pointer;
}
.title {
  height: 42.6px;
  background: #edefed;
  line-height: 42.6px;
  padding-left: 20px;
	margin-bottom: 20px;
}
</style>