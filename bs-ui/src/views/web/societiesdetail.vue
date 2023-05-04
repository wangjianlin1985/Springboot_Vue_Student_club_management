<template>
  <div class="web-main">
    <div class="main-content">
      <el-row :gutter="30">
        <el-col :span="17">
          <el-card class="box-card" style="min-height: 200px; margin-bottom:20px">
            <div slot="header" class="clearfix">
              <span>{{form.societiesName}}-详情</span>
              <el-button type="success" v-if="idnumber && !form.presidentId" style="float: right; padding: 3px 0" @click.native="apllaypresident">申请成为社长</el-button>
              <el-button type="success" v-if="idnumber && isjoin==0" style="float: right; padding: 3px 0;margin-right: 8px;" @click.native="joinPresident">申请入团</el-button>
              <!--<el-button type="success" style="float: right; padding: 3px 0;margin-right: 8px;" @click.native="joinPresident">申请入团</el-button>-->
            </div>
            <div class="text item">
                <el-image :src="form.societiesImg" class="image" style="width:100%;height:500px"></el-image>
                <div style="padding: 10px;">
                    <div style="display:block;color:#999">
                      <span>社团类型：{{selectDictLabel(societiesTypeOptions, form.societiesType)}}</span>
                      <span>成员数：{{form.members}} </span>
                      <el-button type="success" v-if="idnumber && userid==form.presidentId" style="float: right; " @click.native="createActivity">创建活动</el-button>
                    </div>
                    <p style="display:block;color:#999;">社团理念：{{form.remark}} </p>
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
              <div v-html="'公告内容'+item.noticeContent" style="display:block;font-size:14px;color:#999;"></div>
            </div>
          </el-card>
        </el-col>
        <el-col :span="17">
          <el-tabs type="border-card" style="min-height: 200px;">
            <el-tab-pane label="活动区">
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
            </el-tab-pane>
            <el-tab-pane label="评论区">
              <comment @doSend="doSend($event)"
                      @doChidSend="doChidSend(arguments)"
                      :commentList="commentList"
                      :commentNum="commentNum"
                      :label="label"
                      :avatar="avatar"
                      :placeholder="placeholder"
                      :minRows="minRows"
                      :maxRows="maxRows">
              </comment>
            </el-tab-pane>
          </el-tabs>
        </el-col>
      </el-row>
    </div>
    <!-- 添加或修改社团活动对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="activityform" :model="activityform" :rules="rules" label-width="80px">
        <el-form-item label="活动图片">
          <imageUpload v-model="activityform.activityImg"/>
        </el-form-item>
        <el-form-item label="活动名称" prop="activityName">
          <el-input v-model="activityform.activityName" placeholder="请输入活动名称" />
        </el-form-item>
        <el-form-item label="活动地点" prop="address">
          <el-input v-model="activityform.address" placeholder="请输入活动地点" />
        </el-form-item>
        <el-form-item label="活动简介" prop="introduction">
          <el-input v-model="activityform.introduction" placeholder="请输入活动简介" />
        </el-form-item>
        <el-form-item label="活动内容">
          <editor v-model="activityform.activityContent" :min-height="192"/>
        </el-form-item>
        <el-form-item label="活动时间" prop="openTime">
          <el-date-picker clearable size="small"
            v-model="activityform.openTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="选择活动时间">
          </el-date-picker>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
    <!--  底部  -->
    <div class="el-login-footer">
      <span>Copyright © 2018-2021 校园社区平台 All Rights Reserved.</span>
    </div>
  </div>
</template>

<script>
import { getSocieties,updateSocieties } from "@/api/community/societies";
import { listSocietiesmember,getSocietiesmember, addSocietiesmember  } from "@/api/community/societiesmember";
import { listSocietiescomment,addSocietiescomment } from "@/api/community/societiescomment";
import { addPresidentapply } from "@/api/community/presidentapply";
import { listNotice } from "@/api/system/notice";
import { listActivity,addActivity} from "@/api/community/activity";
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
        // 遮罩层
        loading: true,
        // 弹出层标题
        title: "",
        // 是否显示弹出层
        open: false,
        // 表单参数
        activityform: {
          societiesId: null,
          societiesName: null,
          members: 0,
          status: "0",
        },
        // 表单校验
        rules: {
          activityName: [
            { required: true, message: "活动名称不能为空", trigger: "blur" }
          ],
          introduction: [
            { required: true, message: "活动简介不能为空", trigger: "blur" }
          ],
          activityContent: [
            { required: true, message: "活动内容不能为空", trigger: "blur" }
          ],
          societiesName: [
            { required: true, message: "社团名称不能为空", trigger: "blur" }
          ],
        },


        // 社团活动表格数据
        activityList: [],
        societiesId:undefined,
        // 表单参数
        form: {},
        // 公告表格数据
        noticeList: [],
        label: "已认证",
        placeholder: "说点什么吧",
        minRows: 4,
        maxRows: 4,
        commentNum: 2,
        userid:this.$store.getters.userid,
        nickname:this.$store.getters.nickname,
        idnumber:this.$store.getters.idnumber,
        isjoin:0,
        avatar: require("@/assets/images/profile.jpg"),
        commentList:[

        ],
        // 社团类型字典
        societiesTypeOptions: []
      };
    },
    watch: {

    },

  created() {
    this.societiesId = this.$route.params && this.$route.params.societiesId;
    this.activityform.societiesId=this.societiesId;
    this.getSocieties(this.societiesId);
    this.getActivityList();
    this.getNoticeList();
    this.getSocietiescommentList();
    this.getDicts("societies_type").then(response => {
      this.societiesTypeOptions = response.data;
    });
    this.getJoinStatus();

  },
  methods: {
    /** 查询社团 */
    getSocieties(societiesId) {
      getSocieties(societiesId).then(response => {
        this.form = response.data;
        console.log(this.form);
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

    getJoinStatus(){
      let param={
        societiesId:this.societiesId,
        memberId:this.userid
      }
      listSocietiesmember(param).then(response => {
        if(response.rows.length > 0){
          this.isjoin=1;
        }
      });
    },
    /** 查询活动评论列表 */
    getSocietiescommentList() {
      this.loading = true;
      let param={
        societiesId:this.societiesId,
        replyId:0,
        commentUser:{},
        targetUser:{},
        societies:{}
      }
      listSocietiescomment(param).then(response => {
        this.commentList = response.rows;
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
    apllaypresident(){
        let that=this;
        this.$confirm('是否确认成为社团社长一职', "提示", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
            let param={
                societiesId:that.societiesId,
            }
          return addPresidentapply(param);
        }).then(() => {
          this.msgSuccess("已提交审核，请耐心等待！");
        })
    },
    joinPresident(){
      let that=this;
        this.$confirm('是否确认申请加入社团', "提示", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
            let param={
                societiesId:that.societiesId,
            }
          return addSocietiesmember(param);
        }).then(() => {
          this.msgSuccess("已提交审核，请耐心等待！");
        })
    },
    doSend(content) {
      this.commentNum=this.commentNum+1;
      let commentContent={
        replyId:0,
        societiesId:this.societiesId,
        commentId: this.$store.getters.userid,
        content:content,
        createDate: this.parseTime(new Date()),
      }
      this.addSocietiescomment(commentContent);
      //TODO:保存评论
    },
    doChidSend(args) {
      console.log("评论区发送按钮点击事件：");
      console.log("content=" + args[0]);
      console.log("targetUserId=" + args[1]);
      console.log("父级评论id=" + args[2]);
      let parentid=args[2];
      const that =this;

      let commentContent={
        replyId:args[2],
        societiesId:this.societiesId,
        commentId: this.$store.getters.userid,
        targetId:args[1],
        content:args[0],
        createDate: this.parseTime(new Date()),
      }
      this.addSocietiescomment(commentContent);
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.activityform = {
        activityId: null,
        activityImg: null,
        activityName: null,
        introduction: null,
        activityContent: null,
        societiesId: null,
        societiesName: null,
        members: null,
        status: "0",
        openTime: null,
        createTime: null,
        updateTime: null
      };
      this.resetForm("activityform");
    },
    /** 新增按钮操作 */
    createActivity() {
      this.reset();
      this.open = true;
      this.title = "创建社团活动";
    },
    /** 提交按钮 */
    submitForm() {

      this.activityform.societiesId=this.societiesId;
      this.activityform.societiesName=this.form.societiesName;

      this.$refs["activityform"].validate(valid => {
        if (valid) {
          addActivity(this.activityform).then(response => {
              this.msgSuccess("活动创建成功，请耐心等待审核");
              this.open = false;
              this.getList();
            });
        }
      });
    },
    addSocietiescomment(param){
      addSocietiescomment(param).then(response => {
        this.getSocietiescommentList();
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
