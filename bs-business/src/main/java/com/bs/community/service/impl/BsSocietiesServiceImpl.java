package com.bs.community.service.impl;

import java.util.List;
import com.bs.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bs.community.mapper.BsSocietiesMapper;
import com.bs.community.domain.BsSocieties;
import com.bs.community.service.IBsSocietiesService;

/**
 * 社团Service业务层处理
 * 
 * @author bs
 * @date 2021-01-31
 */
@Service
public class BsSocietiesServiceImpl implements IBsSocietiesService 
{
    @Autowired
    private BsSocietiesMapper bsSocietiesMapper;

    /**
     * 查询社团
     * 
     * @param societiesId 社团ID
     * @return 社团
     */
    @Override
    public BsSocieties selectBsSocietiesById(Long societiesId)
    {
        return bsSocietiesMapper.selectBsSocietiesById(societiesId);
    }

    /**
     * 查询社团列表
     * 
     * @param bsSocieties 社团
     * @return 社团
     */
    @Override
    public List<BsSocieties> selectBsSocietiesList(BsSocieties bsSocieties)
    {
        return bsSocietiesMapper.selectBsSocietiesList(bsSocieties);
    }

    /**
     * 新增社团
     * 
     * @param bsSocieties 社团
     * @return 结果
     */
    @Override
    public int insertBsSocieties(BsSocieties bsSocieties)
    {
        bsSocieties.setCreateTime(DateUtils.getNowDate());
        return bsSocietiesMapper.insertBsSocieties(bsSocieties);
    }

    /**
     * 修改社团
     * 
     * @param bsSocieties 社团
     * @return 结果
     */
    @Override
    public int updateBsSocieties(BsSocieties bsSocieties)
    {
        return bsSocietiesMapper.updateBsSocieties(bsSocieties);
    }

    /**
     * 批量删除社团
     * 
     * @param societiesIds 需要删除的社团ID
     * @return 结果
     */
    @Override
    public int deleteBsSocietiesByIds(Long[] societiesIds)
    {
        return bsSocietiesMapper.deleteBsSocietiesByIds(societiesIds);
    }

    /**
     * 删除社团信息
     * 
     * @param societiesId 社团ID
     * @return 结果
     */
    @Override
    public int deleteBsSocietiesById(Long societiesId)
    {
        return bsSocietiesMapper.deleteBsSocietiesById(societiesId);
    }
}
