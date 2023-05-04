package com.bs.community.service.impl;

import java.util.List;
import com.bs.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bs.community.mapper.BsActivityMapper;
import com.bs.community.domain.BsActivity;
import com.bs.community.service.IBsActivityService;

/**
 * 社团活动Service业务层处理
 * 
 * @author bs
 * @date 2021-01-31
 */
@Service
public class BsActivityServiceImpl implements IBsActivityService 
{
    @Autowired
    private BsActivityMapper bsActivityMapper;

    /**
     * 查询社团活动
     * 
     * @param activityId 社团活动ID
     * @return 社团活动
     */
    @Override
    public BsActivity selectBsActivityById(Long activityId)
    {
        return bsActivityMapper.selectBsActivityById(activityId);
    }

    /**
     * 查询社团活动列表
     * 
     * @param bsActivity 社团活动
     * @return 社团活动
     */
    @Override
    public List<BsActivity> selectBsActivityList(BsActivity bsActivity)
    {
        return bsActivityMapper.selectBsActivityList(bsActivity);
    }

    /**
     * 新增社团活动
     * 
     * @param bsActivity 社团活动
     * @return 结果
     */
    @Override
    public int insertBsActivity(BsActivity bsActivity)
    {
        bsActivity.setCreateTime(DateUtils.getNowDate());
        bsActivity.setUpdateTime(DateUtils.getNowDate());
        return bsActivityMapper.insertBsActivity(bsActivity);
    }

    /**
     * 修改社团活动
     * 
     * @param bsActivity 社团活动
     * @return 结果
     */
    @Override
    public int updateBsActivity(BsActivity bsActivity)
    {
        bsActivity.setUpdateTime(DateUtils.getNowDate());
        return bsActivityMapper.updateBsActivity(bsActivity);
    }

    /**
     * 批量删除社团活动
     * 
     * @param activityIds 需要删除的社团活动ID
     * @return 结果
     */
    @Override
    public int deleteBsActivityByIds(Long[] activityIds)
    {
        return bsActivityMapper.deleteBsActivityByIds(activityIds);
    }

    /**
     * 删除社团活动信息
     * 
     * @param activityId 社团活动ID
     * @return 结果
     */
    @Override
    public int deleteBsActivityById(Long activityId)
    {
        return bsActivityMapper.deleteBsActivityById(activityId);
    }
}
