package com.bs.community.service.impl;

import java.util.List;
import com.bs.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bs.community.mapper.BsPresidentApplyMapper;
import com.bs.community.domain.BsPresidentApply;
import com.bs.community.service.IBsPresidentApplyService;

/**
 * 社长申请Service业务层处理
 * 
 * @author bs
 * @date 2021-02-02
 */
@Service
public class BsPresidentApplyServiceImpl implements IBsPresidentApplyService 
{
    @Autowired
    private BsPresidentApplyMapper bsPresidentApplyMapper;

    /**
     * 查询社长申请
     * 
     * @param applyId 社长申请ID
     * @return 社长申请
     */
    @Override
    public BsPresidentApply selectBsPresidentApplyById(Long applyId)
    {
        return bsPresidentApplyMapper.selectBsPresidentApplyById(applyId);
    }

    /**
     * 查询社长申请列表
     * 
     * @param bsPresidentApply 社长申请
     * @return 社长申请
     */
    @Override
    public List<BsPresidentApply> selectBsPresidentApplyList(BsPresidentApply bsPresidentApply)
    {
        return bsPresidentApplyMapper.selectBsPresidentApplyList(bsPresidentApply);
    }

    /**
     * 新增社长申请
     * 
     * @param bsPresidentApply 社长申请
     * @return 结果
     */
    @Override
    public int insertBsPresidentApply(BsPresidentApply bsPresidentApply)
    {
        bsPresidentApply.setCreateTime(DateUtils.getNowDate());
        bsPresidentApply.setUpdateTime(DateUtils.getNowDate());
        return bsPresidentApplyMapper.insertBsPresidentApply(bsPresidentApply);
    }

    /**
     * 修改社长申请
     * 
     * @param bsPresidentApply 社长申请
     * @return 结果
     */
    @Override
    public int updateBsPresidentApply(BsPresidentApply bsPresidentApply)
    {
        bsPresidentApply.setUpdateTime(DateUtils.getNowDate());
        return bsPresidentApplyMapper.updateBsPresidentApply(bsPresidentApply);
    }

    /**
     * 批量删除社长申请
     * 
     * @param applyIds 需要删除的社长申请ID
     * @return 结果
     */
    @Override
    public int deleteBsPresidentApplyByIds(Long[] applyIds)
    {
        return bsPresidentApplyMapper.deleteBsPresidentApplyByIds(applyIds);
    }

    /**
     * 删除社长申请信息
     * 
     * @param applyId 社长申请ID
     * @return 结果
     */
    @Override
    public int deleteBsPresidentApplyById(Long applyId)
    {
        return bsPresidentApplyMapper.deleteBsPresidentApplyById(applyId);
    }
}
