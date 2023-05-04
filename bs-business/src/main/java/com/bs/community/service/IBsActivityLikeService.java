package com.bs.community.service;

import java.util.List;
import com.bs.community.domain.BsActivityLike;

/**
 * 活动点赞Service接口
 * 
 * @author bs
 * @date 2021-01-31
 */
public interface IBsActivityLikeService 
{
    /**
     * 查询活动点赞
     * 
     * @param likeId 活动点赞ID
     * @return 活动点赞
     */
    public BsActivityLike selectBsActivityLikeById(Long likeId);

    /**
     * 查询活动点赞列表
     * 
     * @param bsActivityLike 活动点赞
     * @return 活动点赞集合
     */
    public List<BsActivityLike> selectBsActivityLikeList(BsActivityLike bsActivityLike);

    /**
     * 新增活动点赞
     * 
     * @param bsActivityLike 活动点赞
     * @return 结果
     */
    public int insertBsActivityLike(BsActivityLike bsActivityLike);

    /**
     * 修改活动点赞
     * 
     * @param bsActivityLike 活动点赞
     * @return 结果
     */
    public int updateBsActivityLike(BsActivityLike bsActivityLike);

    /**
     * 批量删除活动点赞
     * 
     * @param likeIds 需要删除的活动点赞ID
     * @return 结果
     */
    public int deleteBsActivityLikeByIds(Long[] likeIds);

    /**
     * 删除活动点赞信息
     * 
     * @param likeId 活动点赞ID
     * @return 结果
     */
    public int deleteBsActivityLikeById(Long likeId);
}
