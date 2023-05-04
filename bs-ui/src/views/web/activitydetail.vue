<template>
  <div class="web-main">
    <div class="main-content">
      <el-row :gutter="30">
        <el-col :span="17">
          <el-card class="box-card" style="min-height: 200px; margin-bottom:20px">
            <div slot="header" class="clearfix">
              <span>{{form.activityName}}-详情</span>
            </div>
            <div class="text item">
                <el-image :src="form.activityImg" class="image" style="width:100%;height:500px"></el-image>
                <div style="padding: 10px;">
                    <span style="display:block;padding-bottom:5px">活动名称:{{form.activityName}}</span>
                    <span style="display:block;padding-bottom:5px;font-size:14px;color:#999;">举办方:{{form.societiesName}}</span>
                    <span style="display:block;padding-bottom:5px;font-size:14px;color:#999;">举办时间:{{parseTime(form.openTime, '{y}-{m}-{d}')}}</span>
                    <span style="display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 2;overflow: hidden;font-size:14px;color:#999;">举办地点：{{form.address}} </span>
                
                </div>
            </div>
          </el-card>
        </el-col>
        <el-col :span="7">
          <el-card class="box-card" style="min-height: 200px;">
            <div slot="header" class="clearfix">
              <span>社团公告</span>
            </div>
            <div v-for="(item) in noticeList" :key="item" style="margin-bottom: 10px;"  class="text item">
              <span style="display:block;padding-bottom:10px;font-weight:600">{{item.noticeTitle}}</span>
              <span style="display:block;font-size:14px;color:#999">发布时间：{{ parseTime(item.createTime, '{y}-{m}-{d}') }} </span>
              <pre style="display:block;font-size:14px;color:#999;">公告内容：{{item.noticeContent}} </pre>
            </div>
          </el-card>
        </el-col>
        <el-col :span="17">
          <el-card class="box-card" style="min-height: 200px;">
            <div slot="header" class="clearfix">
              <span>活动内容</span>
            </div>
            <div class="text item" v-html="form.activityContent">
            </div>
          </el-card>
        </el-col>
      </el-row>
    </div>
    
    <!--  底部  -->
    <div class="el-login-footer">
      <span>Copyright © 2018-2021 校园社区平台 All Rights Reserved.</span>
    </div>
  </div>
</template>

<script>
import {  getActivity} from "@/api/community/activity";
import { listNotice } from "@/api/system/notice";
import { addActivity} from "@/api/community/activity";
import ImageUpload from '@/components/ImageUpload';
import Editor from '@/components/Editor';
import comment from 'bright-comment'
  export default {
    name: "WebMain",
    components:{
      ImageUpload,
      Editor,
      comment
    },
    data() {
      return {
        activityId:undefined,
        // 表单参数
        form: {},
        // 公告表格数据
        noticeList: [],
        userid:this.$store.getters.userid,
        nickname:this.$store.getters.nickname,
        avatar: require("@/assets/images/profile.jpg"),
      };
    },
    watch: {

    },
    
  created() {
    this.activityId = this.$route.params && this.$route.params.activityId;
    this.form.activityId=this.activityId;
    this.getActivity(this.activityId);
    this.getNoticeList();
    this.getDicts("societies_type").then(response => {
      this.societiesTypeOptions = response.data;
    });
  },
  methods: {
    /** 查询社团 */
    getActivity(activityId) {
      getActivity(activityId).then(response => {
        this.form = response.data;
        console.log(this.form);
      });
    },
    /** 查询公告列表 */
    getNoticeList() {
      this.loading = true;
      listNotice(this.queryParams).then(response => {
        this.noticeList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    }
  }
};
</script>

<style rel="stylesheet/scss" lang="scss">
.web-main {
  .el-login-footer {
      height: 40px;
      line-height: 40px;
      position: fixed;
      bottom: 0;
      width: 100%;
      text-align: center;
      color: #fff;
      font-family: Arial;
      font-size: 12px;
      letter-spacing: 1px;
  }
  .main-content{
    width: 1600px;;
    min-width: 1600px;
    margin: 0 auto;
  }
}
</style>
