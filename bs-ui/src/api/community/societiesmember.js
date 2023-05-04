import request from '@/utils/request'

// 查询社团成员列表
export function listSocietiesmember(query) {
  return request({
    url: '/community/societiesmember/list',
    method: 'get',
    params: query
  })
}

// 查询社团成员详细
export function getSocietiesmember(id) {
  return request({
    url: '/community/societiesmember/' + id,
    method: 'get'
  })
}

// 新增社团成员
export function addSocietiesmember(data) {
  return request({
    url: '/community/societiesmember',
    method: 'post',
    data: data
  })
}

// 修改社团成员
export function updateSocietiesmember(data) {
  return request({
    url: '/community/societiesmember',
    method: 'put',
    data: data
  })
}

// 删除社团成员
export function delSocietiesmember(id) {
  return request({
    url: '/community/societiesmember/' + id,
    method: 'delete'
  })
}

// 导出社团成员
export function exportSocietiesmember(query) {
  return request({
    url: '/community/societiesmember/export',
    method: 'get',
    params: query
  })
}