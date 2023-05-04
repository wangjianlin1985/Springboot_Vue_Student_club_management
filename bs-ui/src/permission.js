import router from './router'
import store from './store'
import { Message } from 'element-ui'
import NProgress from 'nprogress'
import 'nprogress/nprogress.css'
import { getToken } from '@/utils/auth'

NProgress.configure({ showSpinner: false })

const whiteList = ['/login', '/auth-redirect', '/bind', '/register','/web/webindex']

router.beforeEach((to, from, next) => {
  NProgress.start()
  if (to.path.indexOf('/web') !=-1||to.path==='/web/webindex') {
    store.dispatch("app/toggleLoginLoc","web");
  }else if(to.path!='/index'){
    store.dispatch("app/toggleLoginLoc","admin");
  }
  if (getToken()) {
    /* has token*/
    if (store.getters.roles.length === 0) {
      // 判断当前用户是否已拉取完user_info信息
      store.dispatch('GetInfo').then(res => {
        // 拉取user_info
        const roles = res.roles
        store.dispatch('GenerateRoutes', { roles }).then(accessRoutes => {
          // 根据roles权限生成可访问的路由表
          router.addRoutes(accessRoutes) // 动态添加可访问路由表
          next({ ...to, replace: true }) // hack方法 确保addRoutes已完成
        })
      }).catch(err => {
          store.dispatch('LogOut').then(() => {
            Message.error(err)
            next({ path: '/web/webindex' })
          })
        })
    } else {
      next()
    }
  } else {
    // 没有token
    if (whiteList.indexOf(to.path) !== -1) {
      // 在免登录白名单，直接进入
      next()
    } else {
      next(`/login?redirect=${to.fullPath}`) // 否则全部重定向到登录页
      NProgress.done()
    }
  }
})

router.afterEach(() => {
  NProgress.done()
})
