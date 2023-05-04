<template>
  <div class="web-main">
    <div class="main-content">
      <el-row :gutter="30">
        <el-col :span="17">
          <el-card class="box-card" style="min-height: 200px; margin-bottom:20px">
            <div slot="header" class="clearfix">
              <span>热门社团</span>
            </div>
            <div class="text item">
              <el-row :gutter="10">
                <el-col :span="8" v-for="(item) in societiesList" :key="item" style="margin-bottom: 10px;">
                  <el-card :body-style="{ padding: '10px' }">
                    <el-image :src="item.societiesImg" class="image" style="width:100%;height:180px"></el-image>
                    <div style="padding: 10px;">
                      <span style="display:block;padding-bottom:5px">社团：{{item.societiesName}}</span>
                      <span style="display:block;font-size:14px;color:#999">社团类型：{{selectDictLabel(societiesTypeOptions, item.societiesType)}} -- 成员数：{{item.members}} </span>
                      <span style="display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 2;overflow: hidden;font-size:14px;color:#999;">社团理念：{{item.remark}} </span>
                      <router-link :to="'/web/societies/detail/' + item.societiesId" class="link-type">
                        <el-button type="success" style="width:100%;margin-top:10px">社团详情</el-button>
                      </router-link>
                    </div>
                  </el-card>
                </el-col>
              </el-row>
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
              <div v-html="'公告内容:'+item.noticeContent" style="display:block;font-size:14px;color:#999;"></div>
            </div>
          </el-card>
        </el-col>
        <el-col :span="17">
          <el-card class="box-card" style="min-height: 200px;">
            <div slot="header" class="clearfix">
              <span>热门活动</span>
            </div>
            <div class="text item">
              <el-row :gutter="10">
                <el-col :span="8" v-for="(item) in activityList" :key="item" style="margin-bottom: 10px;">
                  <el-card :body-style="{ padding: '10px' }">
                    <el-image :src="item.activityImg" class="image" style="width:100%;height:180px"></el-image>
                    <div style="padding: 10px;">
                      <span style="display:block;padding-bottom:5px">活动名称:{{item.activityName}}</span>
                      <span style="display:block;padding-bottom:5px;font-size:14px;color:#999;">举 办 方 ： {{item.societiesName}}</span>
                      <span style="display:block;padding-bottom:5px;font-size:14px;color:#999;">举办时间： {{item.openTime}}</span>
                      <span style="display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 2;overflow: hidden;font-size:14px;color:#999;">举办地点： {{item.address}} </span>
                      <router-link :to="'/web/activity/detail/' + item.activityId" class="link-type">
                        <el-button type="success" style="width:100%;margin-top:10px">活动详情</el-button>
                      </router-link>
                    </div>
                  </el-card>
                </el-col>
              </el-row>
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
import { listHotSocieties, getSocieties } from "@/api/community/societies";
import { listActivity,addActivity} from "@/api/community/activity";
import { listNotice } from "@/api/system/notice";
  export default {
    name: "WebMain",
    data() {
      return {
        // 社团表格数据
        societiesList: [],
        // 公告表格数据
        noticeList: [],
        // 社团活动表格数据
        activityList: [],
        // 社团类型字典
        societiesTypeOptions: []
      };
    },
    watch: {

    },
    
  created() {
    this.getList();
    this.getNoticeList();
    this.getActivityList();
    this.getDicts("societies_type").then(response => {
      this.societiesTypeOptions = response.data;
    });
  },
  methods: {
    /** 查询社团列表 */
    getList() {
      this.loading = true;
      listHotSocieties(this.queryParams).then(response => {
        this.societiesList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    /** 查询社团活动列表 */
    getActivityList() {
      this.loading = true;
      let param={
        societiesId:this.societiesId,
        status:'1'
      }
      listActivity(param).then(response => {
        this.activityList = response.rows;
        this.total = response.total;
        this.loading = false;
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
    },
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
