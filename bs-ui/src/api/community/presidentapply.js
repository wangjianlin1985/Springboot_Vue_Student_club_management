import request from '@/utils/request'

// 查询社长申请列表
export function listPresidentapply(query) {
  return request({
    url: '/community/presidentapply/list',
    method: 'get',
    params: query
  })
}

// 查询社长申请详细
export function getPresidentapply(applyId) {
  return request({
    url: '/community/presidentapply/' + applyId,
    method: 'get'
  })
}

// 新增社长申请
export function addPresidentapply(data) {
  return request({
    url: '/community/presidentapply',
    method: 'post',
    data: data
  })
}

// 修改社长申请
export function updatePresidentapply(data) {
  return request({
    url: '/community/presidentapply',
    method: 'put',
    data: data
  })
}

// 删除社长申请
export function delPresidentapply(applyId) {
  return request({
    url: '/community/presidentapply/' + applyId,
    method: 'delete'
  })
}

// 导出社长申请
export function exportPresidentapply(query) {
  return request({
    url: '/community/presidentapply/export',
    method: 'get',
    params: query
  })
}