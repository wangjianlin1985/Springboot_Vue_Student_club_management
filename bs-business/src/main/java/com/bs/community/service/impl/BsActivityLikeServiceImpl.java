package com.bs.community.service.impl;

import java.util.List;
import com.bs.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bs.community.mapper.BsActivityLikeMapper;
import com.bs.community.domain.BsActivityLike;
import com.bs.community.service.IBsActivityLikeService;

/**
 * 活动点赞Service业务层处理
 * 
 * @author bs
 * @date 2021-01-31
 */
@Service
public class BsActivityLikeServiceImpl implements IBsActivityLikeService 
{
    @Autowired
    private BsActivityLikeMapper bsActivityLikeMapper;

    /**
     * 查询活动点赞
     * 
     * @param likeId 活动点赞ID
     * @return 活动点赞
     */
    @Override
    public BsActivityLike selectBsActivityLikeById(Long likeId)
    {
        return bsActivityLikeMapper.selectBsActivityLikeById(likeId);
    }

    /**
     * 查询活动点赞列表
     * 
     * @param bsActivityLike 活动点赞
     * @return 活动点赞
     */
    @Override
    public List<BsActivityLike> selectBsActivityLikeList(BsActivityLike bsActivityLike)
    {
        return bsActivityLikeMapper.selectBsActivityLikeList(bsActivityLike);
    }

    /**
     * 新增活动点赞
     * 
     * @param bsActivityLike 活动点赞
     * @return 结果
     */
    @Override
    public int insertBsActivityLike(BsActivityLike bsActivityLike)
    {
        bsActivityLike.setCreateTime(DateUtils.getNowDate());
        return bsActivityLikeMapper.insertBsActivityLike(bsActivityLike);
    }

    /**
     * 修改活动点赞
     * 
     * @param bsActivityLike 活动点赞
     * @return 结果
     */
    @Override
    public int updateBsActivityLike(BsActivityLike bsActivityLike)
    {
        return bsActivityLikeMapper.updateBsActivityLike(bsActivityLike);
    }

    /**
     * 批量删除活动点赞
     * 
     * @param likeIds 需要删除的活动点赞ID
     * @return 结果
     */
    @Override
    public int deleteBsActivityLikeByIds(Long[] likeIds)
    {
        return bsActivityLikeMapper.deleteBsActivityLikeByIds(likeIds);
    }

    /**
     * 删除活动点赞信息
     * 
     * @param likeId 活动点赞ID
     * @return 结果
     */
    @Override
    public int deleteBsActivityLikeById(Long likeId)
    {
        return bsActivityLikeMapper.deleteBsActivityLikeById(likeId);
    }
}
