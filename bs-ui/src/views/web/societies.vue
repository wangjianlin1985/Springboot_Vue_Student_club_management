<template>
  <div class="app-container main-content">
    <el-card class="box-card" style="min-height: 200px; margin-bottom:20px">
      <div slot="header" class="clearfix">
        <span>社团列表</span>
      </div>
      <div class="text item">
        <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
          <el-form-item label="社团名称" prop="societiesName">
            <el-input
              v-model="queryParams.societiesName"
              placeholder="请输入社团名称"
              clearable
              size="small"
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>
          <el-form-item label="社团类型" prop="societiesType">
            <el-select v-model="queryParams.societiesType" placeholder="请选择社团类型" clearable size="small">
              <el-option
                v-for="dict in societiesTypeOptions"
                :key="dict.dictValue"
                :label="dict.dictLabel"
                :value="dict.dictValue"
              />
            </el-select>
          </el-form-item>

          <el-form-item>
            <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
          </el-form-item>
        </el-form>

        <el-row :gutter="10">
          <el-col :span="6" v-for="(item) in societiesList" :key="item" style="margin-bottom: 10px;">
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
import { listSocieties, getSocieties, delSocieties, addSocieties, updateSocieties, exportSocieties } from "@/api/community/societies";
import ImageUpload from '@/components/ImageUpload';

export default {
  name: "Societies",
  components: {
    ImageUpload,
  },
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
      // 社团表格数据
      societiesList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 社团类型字典
      societiesTypeOptions: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        societiesName: null,
        societiesType: null,
        members: null,
        status: null,
      },
    };
  },
  created() {
    this.getList();
    this.getDicts("societies_type").then(response => {
      this.societiesTypeOptions = response.data;
    });
  },
  methods: {
    /** 查询社团列表 */
    getList() {
      this.loading = true;
      listSocieties(this.queryParams).then(response => {
        this.societiesList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 社团类型字典翻译
    societiesTypeFormat(row, column) {
      return this.selectDictLabel(this.societiesTypeOptions, row.societiesType);
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
    }
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
