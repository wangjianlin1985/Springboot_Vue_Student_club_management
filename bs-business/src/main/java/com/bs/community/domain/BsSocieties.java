package com.bs.community.domain;

import com.bs.common.core.domain.entity.SysUser;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bs.common.annotation.Excel;
import com.bs.common.core.domain.BaseEntity;

/**
 * 社团对象 bs_societies
 * 
 * @author bs
 * @date 2021-01-31
 */
public class BsSocieties extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 社团ID */
    private Long societiesId;

    /** 社长ID */
    @Excel(name = "社长ID")
    private Long presidentId;

    private SysUser president;

    /** 社团名称 */
    @Excel(name = "社团名称")
    private String societiesName;

    /** 社团类型 */
    @Excel(name = "社团类型")
    private String societiesType;

    /** 社团图片 */
    @Excel(name = "社团图片")
    private String societiesImg;

    /** 成员数 */
    @Excel(name = "成员数")
    private Long members;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public void setSocietiesId(Long societiesId) 
    {
        this.societiesId = societiesId;
    }

    public Long getSocietiesId() 
    {
        return societiesId;
    }
    public void setPresidentId(Long presidentId) 
    {
        this.presidentId = presidentId;
    }

    public Long getPresidentId() 
    {
        return presidentId;
    }
    public void setSocietiesName(String societiesName) 
    {
        this.societiesName = societiesName;
    }

    public String getSocietiesName() 
    {
        return societiesName;
    }
    public void setSocietiesType(String societiesType) 
    {
        this.societiesType = societiesType;
    }

    public String getSocietiesType() 
    {
        return societiesType;
    }
    public void setSocietiesImg(String societiesImg) 
    {
        this.societiesImg = societiesImg;
    }

    public String getSocietiesImg() 
    {
        return societiesImg;
    }
    public void setMembers(Long members) 
    {
        this.members = members;
    }

    public Long getMembers() 
    {
        return members;
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

    public SysUser getPresident() {
        return president;
    }

    public void setPresident(SysUser president) {
        this.president = president;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("societiesId", getSocietiesId())
            .append("presidentId", getPresidentId())
            .append("societiesName", getSocietiesName())
            .append("societiesType", getSocietiesType())
            .append("societiesImg", getSocietiesImg())
            .append("members", getMembers())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("remark", getRemark())
            .toString();
    }
}
