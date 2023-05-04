package com.bs.community.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bs.community.mapper.BsSocietiesCommentMapper;
import com.bs.community.domain.BsSocietiesComment;
import com.bs.community.service.IBsSocietiesCommentService;

/**
 * 活动评论Service业务层处理
 * 
 * @author bs
 * @date 2021-02-04
 */
@Service
public class BsSocietiesCommentServiceImpl implements IBsSocietiesCommentService 
{
    @Autowired
    private BsSocietiesCommentMapper bsSocietiesCommentMapper;

    /**
     * 查询活动评论
     * 
     * @param id 活动评论ID
     * @return 活动评论
     */
    @Override
    public BsSocietiesComment selectBsSocietiesCommentById(Long id)
    {
        return bsSocietiesCommentMapper.selectBsSocietiesCommentById(id);
    }

    /**
     * 查询活动评论列表
     * 
     * @param bsSocietiesComment 活动评论
     * @return 活动评论
     */
    @Override
    public List<BsSocietiesComment> selectBsSocietiesCommentList(BsSocietiesComment bsSocietiesComment)
    {
        return bsSocietiesCommentMapper.selectBsSocietiesCommentList(bsSocietiesComment);
    }

    /**
     * 新增活动评论
     * 
     * @param bsSocietiesComment 活动评论
     * @return 结果
     */
    @Override
    public int insertBsSocietiesComment(BsSocietiesComment bsSocietiesComment)
    {
        return bsSocietiesCommentMapper.insertBsSocietiesComment(bsSocietiesComment);
    }

    /**
     * 修改活动评论
     * 
     * @param bsSocietiesComment 活动评论
     * @return 结果
     */
    @Override
    public int updateBsSocietiesComment(BsSocietiesComment bsSocietiesComment)
    {
        return bsSocietiesCommentMapper.updateBsSocietiesComment(bsSocietiesComment);
    }

    /**
     * 批量删除活动评论
     * 
     * @param ids 需要删除的活动评论ID
     * @return 结果
     */
    @Override
    public int deleteBsSocietiesCommentByIds(Long[] ids)
    {
        return bsSocietiesCommentMapper.deleteBsSocietiesCommentByIds(ids);
    }

    /**
     * 删除活动评论信息
     * 
     * @param id 活动评论ID
     * @return 结果
     */
    @Override
    public int deleteBsSocietiesCommentById(Long id)
    {
        return bsSocietiesCommentMapper.deleteBsSocietiesCommentById(id);
    }
}
