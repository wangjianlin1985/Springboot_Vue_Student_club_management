package com.bs.community.mapper;

import java.util.List;
import com.bs.community.domain.BsSocietiesComment;

/**
 * 活动评论Mapper接口
 * 
 * @author bs
 * @date 2021-02-04
 */
public interface BsSocietiesCommentMapper 
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
     * 删除活动评论
     * 
     * @param id 活动评论ID
     * @return 结果
     */
    public int deleteBsSocietiesCommentById(Long id);

    /**
     * 批量删除活动评论
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBsSocietiesCommentByIds(Long[] ids);
}
