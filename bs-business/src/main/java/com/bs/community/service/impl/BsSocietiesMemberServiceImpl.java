package com.bs.community.service.impl;

import java.util.List;
import com.bs.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bs.community.mapper.BsSocietiesMemberMapper;
import com.bs.community.domain.BsSocietiesMember;
import com.bs.community.service.IBsSocietiesMemberService;

/**
 * 社团成员Service业务层处理
 * 
 * @author bs
 * @date 2021-01-31
 */
@Service
public class BsSocietiesMemberServiceImpl implements IBsSocietiesMemberService 
{
    @Autowired
    private BsSocietiesMemberMapper bsSocietiesMemberMapper;

    /**
     * 查询社团成员
     * 
     * @param id 社团成员ID
     * @return 社团成员
     */
    @Override
    public BsSocietiesMember selectBsSocietiesMemberById(Long id)
    {
        return bsSocietiesMemberMapper.selectBsSocietiesMemberById(id);
    }

    /**
     * 查询社团成员列表
     * 
     * @param bsSocietiesMember 社团成员
     * @return 社团成员
     */
    @Override
    public List<BsSocietiesMember> selectBsSocietiesMemberList(BsSocietiesMember bsSocietiesMember)
    {
        return bsSocietiesMemberMapper.selectBsSocietiesMemberList(bsSocietiesMember);
    }

    /**
     * 新增社团成员
     * 
     * @param bsSocietiesMember 社团成员
     * @return 结果
     */
    @Override
    public int insertBsSocietiesMember(BsSocietiesMember bsSocietiesMember)
    {
        bsSocietiesMember.setCreateTime(DateUtils.getNowDate());
        bsSocietiesMember.setUpdateTime(DateUtils.getNowDate());
        return bsSocietiesMemberMapper.insertBsSocietiesMember(bsSocietiesMember);
    }

    /**
     * 修改社团成员
     * 
     * @param bsSocietiesMember 社团成员
     * @return 结果
     */
    @Override
    public int updateBsSocietiesMember(BsSocietiesMember bsSocietiesMember)
    {
        bsSocietiesMember.setUpdateTime(DateUtils.getNowDate());
        return bsSocietiesMemberMapper.updateBsSocietiesMember(bsSocietiesMember);
    }

    /**
     * 批量删除社团成员
     * 
     * @param ids 需要删除的社团成员ID
     * @return 结果
     */
    @Override
    public int deleteBsSocietiesMemberByIds(Long[] ids)
    {
        return bsSocietiesMemberMapper.deleteBsSocietiesMemberByIds(ids);
    }

    /**
     * 删除社团成员信息
     * 
     * @param id 社团成员ID
     * @return 结果
     */
    @Override
    public int deleteBsSocietiesMemberById(Long id)
    {
        return bsSocietiesMemberMapper.deleteBsSocietiesMemberById(id);
    }
}
