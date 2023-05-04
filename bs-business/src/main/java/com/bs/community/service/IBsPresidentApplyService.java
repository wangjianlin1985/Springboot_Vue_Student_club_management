package com.bs.community.service;

import java.util.List;
import com.bs.community.domain.BsPresidentApply;

/**
 * 社长申请Service接口
 * 
 * @author bs
 * @date 2021-02-02
 */
public interface IBsPresidentApplyService 
{
    /**
     * 查询社长申请
     * 
     * @param applyId 社长申请ID
     * @return 社长申请
     */
    public BsPresidentApply selectBsPresidentApplyById(Long applyId);

    /**
     * 查询社长申请列表
     * 
     * @param bsPresidentApply 社长申请
     * @return 社长申请集合
     */
    public List<BsPresidentApply> selectBsPresidentApplyList(BsPresidentApply bsPresidentApply);

    /**
     * 新增社长申请
     * 
     * @param bsPresidentApply 社长申请
     * @return 结果
     */
    public int insertBsPresidentApply(BsPresidentApply bsPresidentApply);

    /**
     * 修改社长申请
     * 
     * @param bsPresidentApply 社长申请
     * @return 结果
     */
    public int updateBsPresidentApply(BsPresidentApply bsPresidentApply);

    /**
     * 批量删除社长申请
     * 
     * @param applyIds 需要删除的社长申请ID
     * @return 结果
     */
    public int deleteBsPresidentApplyByIds(Long[] applyIds);

    /**
     * 删除社长申请信息
     * 
     * @param applyId 社长申请ID
     * @return 结果
     */
    public int deleteBsPresidentApplyById(Long applyId);
}
