<template>
  <div v-if="loginLoc=='admin'" :class="classObj" class="app-wrapper" :style="{'--current-color': theme}">
    <div v-if="device==='mobile'&&sidebar.opened" class="drawer-bg" @click="handleClickOutside"/>
    <sidebar class="sidebar-container" :style="{ backgroundColor: sideTheme === 'theme-dark' ? variables.menuBg : variables.menuLightBg }" />
    <div :class="{hasTagsView:needTagsView}" class="main-container">
      <div :class="{'fixed-header':fixedHeader}">
        <navbar />
        <tags-view v-if="needTagsView" />
      </div>
      <app-main />
      <right-panel v-if="showSettings">
        <settings />
      </right-panel>
    </div>
  </div>
  <div v-else :class="classObj" class="app-wrapper web-wrapper" :style="{'--current-color': theme}">
    <el-menu
      class="el-menu-web"
      mode="horizontal"
      background-color="#545c64"
      text-color="#fff"
      @select="handleSelect"
      active-text-color="#ffd04b">
      <el-menu-item index="1" class="web-logo">
        <logo class="web-logo-com"/>
      </el-menu-item>
      <el-menu-item index="2">首页</el-menu-item>
      <el-menu-item index="3">社团信息</el-menu-item>
      <el-menu-item index="4">社团活动</el-menu-item>
      <el-menu-item index="5">关于我们</el-menu-item>
      <el-menu-item v-if="nickname" style="float:right">
        <el-dropdown class="avatar-container right-menu-item hover-effect" trigger="click">
          <div class="avatar-wrapper">
            <img :src="avatar" class="user-avatar">
            <span style="color: #fff;display: inline-block;padding: 0 10px;">{{nickname}}</span>
            <i class="el-icon-caret-bottom" />
          </div>
          <el-dropdown-menu slot="dropdown">
            <router-link to="/web/profile">
              <el-dropdown-item>个人中心</el-dropdown-item>
            </router-link>
            <el-dropdown-item v-if="userid==1" divided @click.native="routerToAmin">后台管理</el-dropdown-item>
            <el-dropdown-item v-if="status!=1" divided @click.native="studentCertification">学生认证</el-dropdown-item>
            <el-dropdown-item divided @click.native="logout">
              <span>退出登录</span>
            </el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </el-menu-item>
      <el-menu-item v-else style="float:right">
        <router-link to="/login">
          <span class="web-span">立即登录</span>
        </router-link>
      </el-menu-item>
    </el-menu>
    <el-carousel :interval="4000" indicator-position="outside" height="340px">
      <el-carousel-item v-for="item in 5" :key="item">
        <el-image :src="require('../assets/banner/banner-' +item+'.png')" style="height:100%;width:100%">
          <div slot="placeholder" class="image-slot">
            加载中<span class="dot">...</span>
          </div>
        </el-image>
      </el-carousel-item>
    </el-carousel>
    <app-main />
    <!-- 添加或修改参数配置对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="600px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row>
          <el-col :span="24">
            <el-form-item label="学生姓名" prop="nickName" >
              <el-input v-model="form.nickName" placeholder="请输入学生姓名" disabled/>
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="学生证号" prop="idNumber">
              <el-input v-model="form.idNumber" placeholder="请输入学生证号" />
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { certification} from "@/api/system/user";
import RightPanel from '@/components/RightPanel'
import { AppMain, Navbar, Settings, Sidebar, TagsView } from './components'
import Logo from './components/Sidebar/WebLogo'
import ResizeMixin from './mixin/ResizeHandler'
import { mapState } from 'vuex'
import variables from '@/assets/styles/variables.scss'

export default {
  name: 'Layout',
  components: {
    AppMain,
    Navbar,
    RightPanel,
    Settings,
    Sidebar,
    TagsView,
    Logo
  },
  data() {
    return {
      // 遮罩层
      loading: true,
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 性别状态字典
      sexOptions: [],
      // 表单参数
      form: {
        deptId: 100,
        roleIds: [2]
      },
      // 表单校验
      rules: {
        nickName: [
          { required: true, message: "学生姓名不能为空", trigger: "blur" }
        ],
        idNumber: [
          { required: true, message: "学生证号不能为空", trigger: "blur" }
        ]
      },
    }
  },
  mixins: [ResizeMixin],
  computed: {
    ...mapState({
      nickname: state => state.user.nickname,
      username: state => state.user.name,
      avatar: state => state.user.avatar,
      userid: state => state.user.userid,
      status: state => state.user.status,
      idnumber: state => state.user.idnumber,
      theme: state => state.settings.theme,
      sideTheme: state => state.settings.sideTheme,
      sidebar: state => state.app.sidebar,
      device: state => state.app.device,
      loginLoc: state => state.app.loginLoc,
      showSettings: state => state.settings.showSettings,
      needTagsView: state => state.settings.tagsView,
      fixedHeader: state => state.settings.fixedHeader
    }),
    classObj() {
      return {
        hideSidebar: !this.sidebar.opened,
        openSidebar: this.sidebar.opened,
        withoutAnimation: this.sidebar.withoutAnimation,
        mobile: this.device === 'mobile'
      }
    },
    variables() {
      return variables;
    }
  },
  methods: {
    handleClickOutside() {
      this.$store.dispatch('app/closeSideBar', { withoutAnimation: false })
    },
    handleSelect(key, keyPath){
      console.log(key, keyPath);
      if(key==3){
        this.$router.push('/web/societies')
      }else if(key==4){
        this.$router.push('/web/activity')
      }else if(key==5){
        this.$router.push('/web/aboutus')
      }else{
        this.$router.push('/web/webindex')
      }
      
    },
    async logout() {
      this.$confirm('确定注销并退出系统吗？', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.$store.dispatch('LogOut').then(() => {
          location.href = '/web/webindex';
        })
      })
    },
    async routerToAmin(){
      this.$store.dispatch("app/toggleLoginLoc","admin");
      this.$router.push('/system/user')
    },
    studentCertification(){
      this.reset();
      this.open = true;
      this.title = "学生认证";
    },

    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        userId: this.userid,
        deptId: undefined,
        userName: this.username,
        nickName: this.nickname,
        idNumber: this.idnumber,
        phonenumber: undefined,
        email: undefined,
        sex: undefined,
        status: "0",
        remark: undefined,
        postIds: [],
        roleIds: []
      };
      this.resetForm("form");
    },

    /** 提交按钮 */
    submitForm: function() {
      let that=this;
      this.$refs["form"].validate(valid => {
        if (valid) {
          certification(this.form).then(response => {
            this.msgSuccess("恭喜！您已认证成功");
            this.open = false;
            that.$store.dispatch('GetInfo')
          });
        }
      });
    }
  }
}
</script>

<style lang="scss" scoped>
  @import "~@/assets/styles/mixin.scss";
  @import "~@/assets/styles/variables.scss";

  .web-wrapper{
    background: #fafafb;
  }
  .app-wrapper {
    @include clearfix;
    position: relative;
    height: 100%;
    width: 100%;

    &.mobile.openSidebar {
      position: fixed;
      top: 0;
    }
    .web-span{

      padding: 0 5px;
    }
    .web-logo{
      padding-left: 0px;
      .web-logo-com{
        height: 60px;
        line-height: 60px;
        padding: 0 20px;
        background: none;
        background-color: rgb(84, 92, 100) !important;
        .sidebar-logo-link{
          .sidebar-title{
            font-size: 24px;
          }
        }
      }
    }
  }

  .drawer-bg {
    background: #000;
    opacity: 0.3;
    width: 100%;
    top: 0;
    height: 100%;
    position: absolute;
    z-index: 999;
  }

  .fixed-header {
    position: fixed;
    top: 0;
    right: 0;
    z-index: 9;
    width: calc(100% - #{$sideBarWidth});
    transition: width 0.28s;
  }

  .hideSidebar .fixed-header {
    width: calc(100% - 54px)
  }

  .mobile .fixed-header {
    width: 100%;
  }


  .el-menu-web{
    .avatar-container {
      margin-right: 30px;

      .avatar-wrapper {
        margin-top: 5px;
        position: relative;

        .user-avatar {
          cursor: pointer;
          width: 40px;
          height: 40px;
          border-radius: 10px;
        }

        .el-icon-caret-bottom {
          cursor: pointer;
          position: absolute;
          right: -20px;
          top: 25px;
          font-size: 12px;
        }
      }
    }
  }
  
</style>
