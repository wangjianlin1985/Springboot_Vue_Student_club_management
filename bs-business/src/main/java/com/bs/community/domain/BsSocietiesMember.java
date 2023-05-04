package com.bs.community.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bs.common.annotation.Excel;
import com.bs.common.core.domain.BaseEntity;

/**
 * 社团成员对象 bs_societies_member
 * 
 * @author bs
 * @date 2021-01-31
 */
public class BsSocietiesMember extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 成员ID */
    @Excel(name = "成员ID")
    private Long memberId;

    /** 社团图片 */
    @Excel(name = "社团图片")
    private String memberAvatar;

    /** 成员名称 */
    @Excel(name = "成员名称")
    private String memberName;

    /** 成员联系方式 */
    @Excel(name = "成员联系方式")
    private String memberPhone;

    /** 社团ID */
    @Excel(name = "社团ID")
    private Long societiesId;

    private BsSocieties societies;

    /** 成员状态（0审核中 1正式成员） */
    @Excel(name = "成员状态", readConverterExp = "0=审核中,1=正式成员")
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setMemberId(Long memberId) 
    {
        this.memberId = memberId;
    }

    public Long getMemberId() 
    {
        return memberId;
    }
    public void setMemberAvatar(String memberAvatar) 
    {
        this.memberAvatar = memberAvatar;
    }

    public String getMemberAvatar() 
    {
        return memberAvatar;
    }
    public void setMemberName(String memberName) 
    {
        this.memberName = memberName;
    }

    public String getMemberName() 
    {
        return memberName;
    }
    public void setMemberPhone(String memberPhone) 
    {
        this.memberPhone = memberPhone;
    }

    public String getMemberPhone() 
    {
        return memberPhone;
    }
    public void setSocietiesId(Long societiesId) 
    {
        this.societiesId = societiesId;
    }

    public Long getSocietiesId() 
    {
        return societiesId;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    public BsSocieties getSocieties() {
        return societies;
    }

    public void setSocieties(BsSocieties societies) {
        this.societies = societies;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("memberId", getMemberId())
            .append("memberAvatar", getMemberAvatar())
            .append("memberName", getMemberName())
            .append("memberPhone", getMemberPhone())
            .append("societiesId", getSocietiesId())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
