package com.bs.community.domain;

import com.bs.common.core.domain.entity.SysUser;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bs.common.annotation.Excel;
import com.bs.common.core.domain.BaseEntity;

/**
 * 社长申请对象 bs_president_apply
 * 
 * @author bs
 * @date 2021-02-02
 */
public class BsPresidentApply extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long applyId;

    /** 社长ID */
    @Excel(name = "社长ID")
    private Long presidentId;

    /** 社团ID */
    @Excel(name = "社团ID")
    private Long societiesId;

    private SysUser president;
    private BsSocieties societies;

    /** 审核状态（0审核中 1审核通过  2 审核失败） */
    @Excel(name = "审核状态", readConverterExp = "0=审核中,1=审核通过,2=,审=核失败")
    private String status;

    public void setApplyId(Long applyId) 
    {
        this.applyId = applyId;
    }

    public Long getApplyId() 
    {
        return applyId;
    }
    public void setPresidentId(Long presidentId) 
    {
        this.presidentId = presidentId;
    }

    public Long getPresidentId() 
    {
        return presidentId;
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

    public SysUser getPresident() {
        return president;
    }

    public void setPresident(SysUser president) {
        this.president = president;
    }

    public BsSocieties getSocieties() {
        return societies;
    }

    public void setSocieties(BsSocieties societies) {
        this.societies = societies;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("applyId", applyId)
                .append("presidentId", presidentId)
                .append("societiesId", societiesId)
                .append("president", president)
                .append("societies", societies)
                .append("status", status)
                .toString();
    }
}
