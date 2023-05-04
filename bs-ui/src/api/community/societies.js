import request from '@/utils/request'

// 查询社团列表
export function listHotSocieties(query) {
  return request({
    url: '/community/societies/hotlist',
    method: 'get',
    params: query
  })
}

// 查询社团列表
export function listSocieties(query) {
  return request({
    url: '/community/societies/list',
    method: 'get',
    params: query
  })
}

// 查询社团详细
export function getSocieties(societiesId) {
  return request({
    url: '/community/societies/' + societiesId,
    method: 'get'
  })
}

// 新增社团
export function addSocieties(data) {
  return request({
    url: '/community/societies',
    method: 'post',
    data: data
  })
}

// 修改社团
export function updateSocieties(data) {
  return request({
    url: '/community/societies',
    method: 'put',
    data: data
  })
}

// 删除社团
export function delSocieties(societiesId) {
  return request({
    url: '/community/societies/' + societiesId,
    method: 'delete'
  })
}

// 导出社团
export function exportSocieties(query) {
  return request({
    url: '/community/societies/export',
    method: 'get',
    params: query
  })
}