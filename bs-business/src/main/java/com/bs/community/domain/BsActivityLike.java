package com.bs.community.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bs.common.annotation.Excel;
import com.bs.common.core.domain.BaseEntity;

/**
 * 活动点赞对象 bs_activity_like
 * 
 * @author bs
 * @date 2021-01-31
 */
public class BsActivityLike extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 点赞ID */
    private Long likeId;

    /** 点赞人ID */
    @Excel(name = "点赞人ID")
    private Long likerId;

    public void setLikeId(Long likeId) 
    {
        this.likeId = likeId;
    }

    public Long getLikeId() 
    {
        return likeId;
    }
    public void setLikerId(Long likerId) 
    {
        this.likerId = likerId;
    }

    public Long getLikerId() 
    {
        return likerId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("likeId", getLikeId())
            .append("likerId", getLikerId())
            .append("createTime", getCreateTime())
            .toString();
    }
}
