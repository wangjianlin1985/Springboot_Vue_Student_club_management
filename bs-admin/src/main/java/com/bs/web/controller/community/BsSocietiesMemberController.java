package com.bs.web.controller.community;

import java.util.List;

import com.bs.common.core.domain.model.LoginUser;
import com.bs.common.utils.ServletUtils;
import com.bs.common.utils.StringUtils;
import com.bs.community.domain.BsSocieties;
import com.bs.community.service.IBsSocietiesService;
import com.bs.framework.web.service.TokenService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.bs.common.annotation.Log;
import com.bs.common.core.controller.BaseController;
import com.bs.common.core.domain.AjaxResult;
import com.bs.common.enums.BusinessType;
import com.bs.community.domain.BsSocietiesMember;
import com.bs.community.service.IBsSocietiesMemberService;
import com.bs.common.utils.poi.ExcelUtil;
import com.bs.common.core.page.TableDataInfo;

/**
 * 社团成员Controller
 * 
 * @author bs
 * @date 2021-01-31
 */
@RestController
@RequestMapping("/community/societiesmember")
public class BsSocietiesMemberController extends BaseController
{
    @Autowired
    private IBsSocietiesMemberService bsSocietiesMemberService;
    @Autowired
    private IBsSocietiesService bsSocietiesService;

    @Autowired
    private TokenService tokenService;

    /**
     * 查询社团成员列表
     */
    //@PreAuthorize("@ss.hasPermi('community:societiesmember:list')")
    @GetMapping("/list")
    public TableDataInfo list(BsSocietiesMember bsSocietiesMember)
    {
        startPage();
        List<BsSocietiesMember> list = bsSocietiesMemberService.selectBsSocietiesMemberList(bsSocietiesMember);
        return getDataTable(list);
    }

    /**
     * 导出社团成员列表
     */
    @PreAuthorize("@ss.hasPermi('community:societiesmember:export')")
    @Log(title = "社团成员", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(BsSocietiesMember bsSocietiesMember)
    {
        List<BsSocietiesMember> list = bsSocietiesMemberService.selectBsSocietiesMemberList(bsSocietiesMember);
        ExcelUtil<BsSocietiesMember> util = new ExcelUtil<BsSocietiesMember>(BsSocietiesMember.class);
        return util.exportExcel(list, "societiesmember");
    }

    /**
     * 获取社团成员详细信息
     */
    @PreAuthorize("@ss.hasPermi('community:societiesmember:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bsSocietiesMemberService.selectBsSocietiesMemberById(id));
    }

    /**
     * 新增社团成员
     */
    @Log(title = "社团成员", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BsSocietiesMember bsSocietiesMember)
    {
        LoginUser loginUser=tokenService.getLoginUser(ServletUtils.getRequest());
        bsSocietiesMember.setMemberId(loginUser.getUser().getUserId());
        List<BsSocietiesMember> list =bsSocietiesMemberService.selectBsSocietiesMemberList(bsSocietiesMember);
        if(!CollectionUtils.isEmpty(list)){
            return AjaxResult.error("您已经申请过改社团！");
        }
        bsSocietiesMember.setMemberAvatar(loginUser.getUser().getAvatar());
        bsSocietiesMember.setMemberName(loginUser.getUser().getNickName());
        bsSocietiesMember.setMemberPhone(loginUser.getUser().getPhonenumber());
        return toAjax(bsSocietiesMemberService.insertBsSocietiesMember(bsSocietiesMember));
    }

    /**
     * 修改社团成员
     */
    @Log(title = "社团成员", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BsSocietiesMember bsSocietiesMember)
    {
        BsSocieties bsSocieties=bsSocietiesService.selectBsSocietiesById(bsSocietiesMember.getSocietiesId());

        if("1".equals(bsSocietiesMember.getStatus())){

            if(StringUtils.isNotNull(bsSocieties.getMembers())){
                bsSocieties.setMembers(bsSocieties.getMembers()+1L);
            }else{
                bsSocieties.setMembers(1L);
            }


        }else{
            if(StringUtils.isNotNull(bsSocieties.getMembers())){
                bsSocieties.setMembers(bsSocieties.getMembers()-1L);
            }
        }

        bsSocietiesService.updateBsSocieties(bsSocieties);
        return toAjax(bsSocietiesMemberService.updateBsSocietiesMember(bsSocietiesMember));
    }

    /**
     * 删除社团成员
     */
    @PreAuthorize("@ss.hasPermi('community:societiesmember:remove')")
    @Log(title = "社团成员", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bsSocietiesMemberService.deleteBsSocietiesMemberByIds(ids));
    }
}
