import request from '@/utils/request'

// 查询活动评论列表
export function listSocietiescomment(query) {
  return request({
    url: '/community/societiescomment/list',
    method: 'get',
    params: query
  })
}

// 查询活动评论详细
export function getSocietiescomment(id) {
  return request({
    url: '/community/societiescomment/' + id,
    method: 'get'
  })
}

// 新增活动评论
export function addSocietiescomment(data) {
  return request({
    url: '/community/societiescomment',
    method: 'post',
    data: data
  })
}

// 修改活动评论
export function updateSocietiescomment(data) {
  return request({
    url: '/community/societiescomment',
    method: 'put',
    data: data
  })
}

// 删除活动评论
export function delSocietiescomment(id) {
  return request({
    url: '/community/societiescomment/' + id,
    method: 'delete'
  })
}

// 导出活动评论
export function exportSocietiescomment(query) {
  return request({
    url: '/community/societiescomment/export',
    method: 'get',
    params: query
  })
}