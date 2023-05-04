package com.bs.community.service;

import java.util.List;
import com.bs.community.domain.BsSocietiesComment;

/**
 * 活动评论Service接口
 * 
 * @author bs
 * @date 2021-02-04
 */
public interface IBsSocietiesCommentService 
{
    /**
     * 查询活动评论
     * 
     * @param id 活动评论ID
     * @return 活动评论
     */
    public BsSocietiesComment selectBsSocietiesCommentById(Long id);

    /**
     * 查询活动评论列表
     * 
     * @param bsSocietiesComment 活动评论
     * @return 活动评论集合
     */
    public List<BsSocietiesComment> selectBsSocietiesCommentList(BsSocietiesComment bsSocietiesComment);

    /**
     * 新增活动评论
     * 
     * @param bsSocietiesComment 活动评论
     * @return 结果
     */
    public int insertBsSocietiesComment(BsSocietiesComment bsSocietiesComment);

    /**
     * 修改活动评论
     * 
     * @param bsSocietiesComment 活动评论
     * @return 结果
     */
    public int updateBsSocietiesComment(BsSocietiesComment bsSocietiesComment);

    /**
     * 批量删除活动评论
     * 
     * @param ids 需要删除的活动评论ID
     * @return 结果
     */
    public int deleteBsSocietiesCommentByIds(Long[] ids);

    /**
     * 删除活动评论信息
     * 
     * @param id 活动评论ID
     * @return 结果
     */
    public int deleteBsSocietiesCommentById(Long id);
}
