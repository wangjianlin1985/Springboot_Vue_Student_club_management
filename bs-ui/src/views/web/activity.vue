<template>
  <div class="app-container main-content">
    <el-card class="box-card" style="min-height: 200px; margin-bottom:20px">
      <div slot="header" class="clearfix">
        <span>社团活动列表</span>
      </div>
      <div class="text item">
        <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
          <el-form-item label="活动名称" prop="activityName">
            <el-input
              v-model="queryParams.activityName"
              placeholder="请输入活动名称"
              clearable
              size="small"
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
          </el-form-item>
        </el-form>

        <el-row :gutter="10">
          <el-col :span="6" v-for="(item) in activityList" :key="item" style="margin-bottom: 10px;">
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
        <pagination
          v-show="total>0"
          :total="total"
          :page.sync="queryParams.pageNum"
          :limit.sync="queryParams.pageSize"
          @pagination="getList"
        />
      </div>
    </el-card>
  </div>
</template>

<script>
import { listActivity, getActivity} from "@/api/community/activity";

export default {
  name: "Activity",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 社团活动表格数据
      activityList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        activityName: null,
        societiesId: null,
        status:'1'
      },
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询社团活动列表 */
    getList() {
      this.loading = true;
      listActivity(this.queryParams).then(response => {
        this.activityList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
  }
};
</script>
<style rel="stylesheet/scss" lang="scss">
.main-content{
  width: 1600px;;
  min-width: 1600px;
  margin: 0 auto;
  .el-card__header {
    padding: 22px 15px 7px;
    min-height: 60px;
    font-weight: 600;
}
}
</style>
