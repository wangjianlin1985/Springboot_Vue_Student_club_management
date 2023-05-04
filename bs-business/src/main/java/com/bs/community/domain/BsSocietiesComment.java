package com.bs.community.domain;

import java.util.Date;
import java.util.List;

import com.bs.common.core.domain.entity.SysUser;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bs.common.annotation.Excel;
import com.bs.common.core.domain.BaseEntity;

/**
 * 活动评论对象 bs_societies_comment
 * 
 * @author bs
 * @date 2021-02-04
 */
public class BsSocietiesComment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 评论ID */
    private Long id;

    /** 回复ID */
    @Excel(name = "回复ID")
    private Long replyId;

    /** 社团ID */
    @Excel(name = "社团ID")
    private Long societiesId;

    /** 评论人ID */
    @Excel(name = "评论人ID")
    private Long commentId;

    /** 目标用户ID */
    @Excel(name = "目标用户ID")
    private Long targetId;

    /** 评论内容 */
    @Excel(name = "评论内容")
    private String content;

    private CommentUser commentUser;

    private TargetUser targetUser;

    private BsSocieties societies;

    private String societiesName;

    private List<BsSocietiesComment> childrenList;


    /** 申请时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "申请时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdate;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setReplyId(Long replyId) 
    {
        this.replyId = replyId;
    }

    public Long getReplyId() 
    {
        return replyId;
    }
    public void setSocietiesId(Long societiesId) 
    {
        this.societiesId = societiesId;
    }

    public Long getSocietiesId() 
    {
        return societiesId;
    }
    public void setCommentId(Long commentId) 
    {
        this.commentId = commentId;
    }

    public Long getCommentId() 
    {
        return commentId;
    }
    public void setTargetId(Long targetId) 
    {
        this.targetId = targetId;
    }

    public Long getTargetId() 
    {
        return targetId;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setCreatedate(Date createdate) 
    {
        this.createdate = createdate;
    }

    public Date getCreatedate() 
    {
        return createdate;
    }

    public CommentUser getCommentUser() {
        return commentUser;
    }

    public void setCommentUser(CommentUser commentUser) {
        this.commentUser = commentUser;
    }

    public TargetUser getTargetUser() {
        return targetUser;
    }

    public void setTargetUser(TargetUser targetUser) {
        this.targetUser = targetUser;
    }

    public BsSocieties getSocieties() {
        return societies;
    }

    public void setSocieties(BsSocieties societies) {
        this.societies = societies;
    }

    public String getSocietiesName() {
        return societiesName;
    }

    public void setSocietiesName(String societiesName) {
        this.societiesName = societiesName;
    }

    public List<BsSocietiesComment> getChildrenList() {
        return childrenList;
    }

    public void setChildrenList(List<BsSocietiesComment> childrenList) {
        this.childrenList = childrenList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("replyId", getReplyId())
            .append("societiesId", getSocietiesId())
            .append("commentId", getCommentId())
            .append("targetId", getTargetId())
            .append("content", getContent())
            .append("createdate", getCreatedate())
            .toString();
    }
}
