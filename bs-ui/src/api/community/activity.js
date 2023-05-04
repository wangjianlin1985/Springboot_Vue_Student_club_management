import request from '@/utils/request'

// 查询社团活动列表
export function listActivity(query) {
  return request({
    url: '/community/activity/list',
    method: 'get',
    params: query
  })
}

// 查询社团活动详细
export function getActivity(activityId) {
  return request({
    url: '/community/activity/' + activityId,
    method: 'get'
  })
}

// 新增社团活动
export function addActivity(data) {
  return request({
    url: '/community/activity',
    method: 'post',
    data: data
  })
}

// 修改社团活动
export function updateActivity(data) {
  return request({
    url: '/community/activity',
    method: 'put',
    data: data
  })
}

// 删除社团活动
export function delActivity(activityId) {
  return request({
    url: '/community/activity/' + activityId,
    method: 'delete'
  })
}

// 导出社团活动
export function exportActivity(query) {
  return request({
    url: '/community/activity/export',
    method: 'get',
    params: query
  })
}