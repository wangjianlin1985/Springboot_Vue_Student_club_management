<template>
  <div class="web-main">
    <div class="main-content">
      <el-row :gutter="30">
        <el-col :span="17">
          <el-card class="box-card" style="min-height: 200px; margin-bottom:20px">
            <div class="text item" v-html="aboutusContent" style="padding: 30px 70px;">
              
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
        aboutusContent:'<div class="con_top"><h1 style="text-align: center;">大学生社团简介</h1></div><div align="center"></div><div class="con_main" id="contentText"><p style="text-align: justify;">　　学生社团是指学生为了实现会员的共同意愿和满足个人兴趣爱好的需求、自愿组成的、按照其章程开展活动的群众性学生组织。学生社团是我国校园文化建设的重要载体，是中国高校第二课堂的引领者。下面学习啦小编为你整理了大学生社团简介，欢迎阅读。</p><h2>　　大学生社团简介</h2><p style="text-align: justify;">　　高校学生社团是学生自愿组成，为实现会员的共同愿望，按照其章程开展活动的非盈利性群众组织。</p><p style="text-align: justify;">　　中国中等学校和高等学校学生在自愿基础上自发组织而成、按照章程自主开展活动的学生群众组织。这些社团可打破年级、系科以及学校的界限。团结兴趣爱好相近的同学，发挥他们在某方面的特长，开展有益于学生身心健康的活动。</p><p style="text-align: justify;">　　学生社团形式多种多样，如学术问题、社会问题的讨论研究会，文学艺术、体育、音乐、美术、影视等方面组成的活动小组，有文艺社、棋艺社、摄影社、美术社、歌唱队、话剧团、篮球队、足球队、数学社、物理社、化学社、微电影社团等等。</p><p style="text-align: justify;">　　大学生社团是我国校园文化建设的重要载体，是我国高校第二课堂的引领者。每年各社团以其具有思想性、艺术性、知识性、趣味性、多样性的社团生活吸引广大学生积极参与其中。</p><h2>　　大学生社团历史沿革</h2><p style="text-align: justify;">　　在中国，高校学生社团已有一百多年的历史。</p><p style="text-align: justify;">　　雷州三中第二十八届学生会</p><p style="text-align: justify;">　　雷州三中第二十八届学生会</p><p style="text-align: justify;">　　1904年，我国成立了第一个严格意义上的大学生社团是京师大学堂的抗俄铁血会，当时的青年学生可以通过集会、演讲、办报、发传单等方式抗议日本、俄国在我国东北发动战争。</p><p style="text-align: justify;">　　1919年“五四”前后一大批现代意义的社团风起云涌，这是“五四”新文化和民主爱国运动的直接产物。</p><p style="text-align: justify;">　　学校的中国共产党组织和行政组织，学校的共产主义青年团组织和学生会，都应关心学生社团的活动，及时给予适当的指导和帮助。一般由同级党组织授权团的组织对学生社团进行管理和具体的指导，学生会应该积极配合和支持学生社团的工作，丰富校园文化生活。</p><h2>　　大学生社团成立目的</h2><p style="text-align: justify;">　　学生社团的活动以保证完成学生的学习任务和不影响学校正常教学秩序为前提;以有益于学生的健康成长和有利于学校各项工作的进行为原则。学生社团组织和活动的目的是活跃学校的学习氛围，提高学生是自主管理能力，丰富学生的课余生活。学生社团可以根据学校的不同情况利用学生的课余时间开展各种形式的活动，以交流思想，切磋技艺，互相启迪，增进友谊。</p><p style="text-align: justify;">　　学生社团是指学生为了实现会员的共同意愿和满足个人兴趣爱好的需求、自愿组成的、按照其章程开展活动的群众性学生组织。</p><p style="text-align: justify;">　　学生社团必须自觉接受学校团委、各院系团委的领导，必须遵守宪法、法律以及学校各项规章制度。社团活动不得妨碍学校各类正常工作和教学、生活秩序。学生社团的会员应当是具有正式学籍的在校学生。学生社团不得从事以营利为目的的经营性活动。学生社团的基本任务是：适应社会发展需要，适应教育改革及学生成长成才的需要，积极开展健康有益、丰富多彩的课外科技文化艺术活动，促进学生德、智、体、美、劳全面发展。</p><p style="text-align: justify;">　　在大学的校园中，有占在校学生数一半以上的学生参加了大学生自己的团队组织：大学生社团。</p><p style="text-align: justify;">　　大学生社团不再只是象牙塔深处的一个亮点，它要担当的将是象牙塔内外各行各业各组织机构沟通交流的使者每个大学生社团都会进行纳新，需要大量的宣传和自我展示，吸引新生加入，评选活动对社团来说是一个很好的推广机会。</p><p style="text-align: justify;">　　高校社团不仅要给大学生一个锻炼的机会，而且要走向社会，让社会了解它们，建立沟通联络的渠道，为高校学习、生活和工作服务，并且，还要让学校与学校建立联系，学生团体与学生团体建立联系，学生与学生建立联系，社会团体与社会团体建立联系，互补长短。</p></div>',
        // 公告表格数据
        noticeList: []
      };
    },
    watch: {

    },
    
  created() {
    this.getNoticeList();
  },
  methods: {
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
