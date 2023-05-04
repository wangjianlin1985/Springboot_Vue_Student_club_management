import request from '@/utils/request'

// 查询活动点赞列表
export function listActivitylike(query) {
  return request({
    url: '/community/activitylike/list',
    method: 'get',
    params: query
  })
}

// 查询活动点赞详细
export function getActivitylike(likeId) {
  return request({
    url: '/community/activitylike/' + likeId,
    method: 'get'
  })
}

// 新增活动点赞
export function addActivitylike(data) {
  return request({
    url: '/community/activitylike',
    method: 'post',
    data: data
  })
}

// 修改活动点赞
export function updateActivitylike(data) {
  return request({
    url: '/community/activitylike',
    method: 'put',
    data: data
  })
}

// 删除活动点赞
export function delActivitylike(likeId) {
  return request({
    url: '/community/activitylike/' + likeId,
    method: 'delete'
  })
}

// 导出活动点赞
export function exportActivitylike(query) {
  return request({
    url: '/community/activitylike/export',
    method: 'get',
    params: query
  })
}