package com.bs.community.mapper;

import java.util.List;
import com.bs.community.domain.BsSocieties;

/**
 * 社团Mapper接口
 * 
 * @author bs
 * @date 2021-01-31
 */
public interface BsSocietiesMapper 
{
    /**
     * 查询社团
     * 
     * @param societiesId 社团ID
     * @return 社团
     */
    public BsSocieties selectBsSocietiesById(Long societiesId);

    /**
     * 查询社团列表
     * 
     * @param bsSocieties 社团
     * @return 社团集合
     */
    public List<BsSocieties> selectBsSocietiesList(BsSocieties bsSocieties);

    /**
     * 新增社团
     * 
     * @param bsSocieties 社团
     * @return 结果
     */
    public int insertBsSocieties(BsSocieties bsSocieties);

    /**
     * 修改社团
     * 
     * @param bsSocieties 社团
     * @return 结果
     */
    public int updateBsSocieties(BsSocieties bsSocieties);

    /**
     * 删除社团
     * 
     * @param societiesId 社团ID
     * @return 结果
     */
    public int deleteBsSocietiesById(Long societiesId);

    /**
     * 批量删除社团
     * 
     * @param societiesIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteBsSocietiesByIds(Long[] societiesIds);
}
