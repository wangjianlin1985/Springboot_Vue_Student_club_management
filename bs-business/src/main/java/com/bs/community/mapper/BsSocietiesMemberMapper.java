package com.bs.community.mapper;

import java.util.List;
import com.bs.community.domain.BsSocietiesMember;

/**
 * 社团成员Mapper接口
 * 
 * @author bs
 * @date 2021-01-31
 */
public interface BsSocietiesMemberMapper 
{
    /**
     * 查询社团成员
     * 
     * @param id 社团成员ID
     * @return 社团成员
     */
    public BsSocietiesMember selectBsSocietiesMemberById(Long id);

    /**
     * 查询社团成员列表
     * 
     * @param bsSocietiesMember 社团成员
     * @return 社团成员集合
     */
    public List<BsSocietiesMember> selectBsSocietiesMemberList(BsSocietiesMember bsSocietiesMember);

    /**
     * 新增社团成员
     * 
     * @param bsSocietiesMember 社团成员
     * @return 结果
     */
    public int insertBsSocietiesMember(BsSocietiesMember bsSocietiesMember);

    /**
     * 修改社团成员
     * 
     * @param bsSocietiesMember 社团成员
     * @return 结果
     */
    public int updateBsSocietiesMember(BsSocietiesMember bsSocietiesMember);

    /**
     * 删除社团成员
     * 
     * @param id 社团成员ID
     * @return 结果
     */
    public int deleteBsSocietiesMemberById(Long id);

    /**
     * 批量删除社团成员
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBsSocietiesMemberByIds(Long[] ids);
}
