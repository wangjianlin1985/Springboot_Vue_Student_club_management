package com.bs.community.mapper;

import java.util.List;
import com.bs.community.domain.BsActivity;

/**
 * 社团活动Mapper接口
 * 
 * @author bs
 * @date 2021-01-31
 */
public interface BsActivityMapper 
{
    /**
     * 查询社团活动
     * 
     * @param activityId 社团活动ID
     * @return 社团活动
     */
    public BsActivity selectBsActivityById(Long activityId);

    /**
     * 查询社团活动列表
     * 
     * @param bsActivity 社团活动
     * @return 社团活动集合
     */
    public List<BsActivity> selectBsActivityList(BsActivity bsActivity);

    /**
     * 新增社团活动
     * 
     * @param bsActivity 社团活动
     * @return 结果
     */
    public int insertBsActivity(BsActivity bsActivity);

    /**
     * 修改社团活动
     * 
     * @param bsActivity 社团活动
     * @return 结果
     */
    public int updateBsActivity(BsActivity bsActivity);

    /**
     * 删除社团活动
     * 
     * @param activityId 社团活动ID
     * @return 结果
     */
    public int deleteBsActivityById(Long activityId);

    /**
     * 批量删除社团活动
     * 
     * @param activityIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteBsActivityByIds(Long[] activityIds);
}
