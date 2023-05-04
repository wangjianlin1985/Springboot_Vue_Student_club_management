package com.bs.community.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bs.common.annotation.Excel;
import com.bs.common.core.domain.BaseEntity;

/**
 * 社团活动对象 bs_activity
 * 
 * @author bs
 * @date 2021-01-31
 */
public class BsActivity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 活动ID */
    private Long activityId;

    /** 活动图片 */
    @Excel(name = "活动图片")
    private String activityImg;

    /** 活动名称 */
    @Excel(name = "活动名称")
    private String activityName;

    /** 活动简介 */
    @Excel(name = "活动简介")
    private String introduction;

    /** 活动内容 */
    @Excel(name = "活动内容")
    private String activityContent;

    /** 社团ID */
    private Long societiesId;

    /** 社团名称 */
    @Excel(name = "社团名称")
    private String societiesName;

    /** 活动参加人数 */
    @Excel(name = "活动地点")
    private String address;

    /** 审核状态（0审核中 1审核通过  2 审核失败） */
    @Excel(name = "审核状态", readConverterExp = "0=审核中,1=审核通过,2=,审=核失败")
    private String status;

    /** 活动时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "活动时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date openTime;

    public void setActivityId(Long activityId) 
    {
        this.activityId = activityId;
    }

    public Long getActivityId() 
    {
        return activityId;
    }
    public void setActivityImg(String activityImg) 
    {
        this.activityImg = activityImg;
    }

    public String getActivityImg() 
    {
        return activityImg;
    }
    public void setActivityName(String activityName) 
    {
        this.activityName = activityName;
    }

    public String getActivityName() 
    {
        return activityName;
    }
    public void setIntroduction(String introduction) 
    {
        this.introduction = introduction;
    }

    public String getIntroduction() 
    {
        return introduction;
    }
    public void setActivityContent(String activityContent) 
    {
        this.activityContent = activityContent;
    }

    public String getActivityContent() 
    {
        return activityContent;
    }
    public void setSocietiesId(Long societiesId) 
    {
        this.societiesId = societiesId;
    }

    public Long getSocietiesId() 
    {
        return societiesId;
    }
    public void setSocietiesName(String societiesName) 
    {
        this.societiesName = societiesName;
    }

    public String getSocietiesName() 
    {
        return societiesName;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAddress()
    {
        return address;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setOpenTime(Date openTime) 
    {
        this.openTime = openTime;
    }

    public Date getOpenTime() 
    {
        return openTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("activityId", getActivityId())
            .append("activityImg", getActivityImg())
            .append("activityName", getActivityName())
            .append("introduction", getIntroduction())
            .append("activityContent", getActivityContent())
            .append("societiesId", getSocietiesId())
            .append("societiesName", getSocietiesName())
            .append("address", getAddress())
            .append("status", getStatus())
            .append("openTime", getOpenTime())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
