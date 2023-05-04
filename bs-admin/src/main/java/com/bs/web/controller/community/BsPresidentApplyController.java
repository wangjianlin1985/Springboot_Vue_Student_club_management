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
import com.bs.community.domain.BsPresidentApply;
import com.bs.community.service.IBsPresidentApplyService;
import com.bs.common.utils.poi.ExcelUtil;
import com.bs.common.core.page.TableDataInfo;

/**
 * 社长申请Controller
 * 
 * @author bs
 * @date 2021-02-02
 */
@RestController
@RequestMapping("/community/presidentapply")
public class BsPresidentApplyController extends BaseController
{
    @Autowired
    private IBsPresidentApplyService bsPresidentApplyService;

    @Autowired
    private IBsSocietiesService bsSocietiesService;

    @Autowired
    private TokenService tokenService;

    /**
     * 查询社长申请列表
     */
    @PreAuthorize("@ss.hasPermi('community:presidentapply:list')")
    @GetMapping("/list")
    public TableDataInfo list(BsPresidentApply bsPresidentApply)
    {
        startPage();
        List<BsPresidentApply> list = bsPresidentApplyService.selectBsPresidentApplyList(bsPresidentApply);
        return getDataTable(list);
    }

    /**
     * 导出社长申请列表
     */
    @PreAuthorize("@ss.hasPermi('community:presidentapply:export')")
    @Log(title = "社长申请", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(BsPresidentApply bsPresidentApply)
    {
        List<BsPresidentApply> list = bsPresidentApplyService.selectBsPresidentApplyList(bsPresidentApply);
        ExcelUtil<BsPresidentApply> util = new ExcelUtil<BsPresidentApply>(BsPresidentApply.class);
        return util.exportExcel(list, "presidentapply");
    }

    /**
     * 获取社长申请详细信息
     */
    @PreAuthorize("@ss.hasPermi('community:presidentapply:query')")
    @GetMapping(value = "/{applyId}")
    public AjaxResult getInfo(@PathVariable("applyId") Long applyId)
    {
        return AjaxResult.success(bsPresidentApplyService.selectBsPresidentApplyById(applyId));
    }

    /**
     * 新增社长申请
     */
    //@PreAuthorize("@ss.hasPermi('community:presidentapply:add')")
    @Log(title = "社长申请", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BsPresidentApply bsPresidentApply)
    {
        if("1".equals(bsPresidentApply.getStatus())){
            BsSocieties bsSocieties=bsSocietiesService.selectBsSocietiesById(bsPresidentApply.getSocietiesId());
            if(bsSocieties.getPresidentId()!=null&& bsSocieties.getPresidentId()!=0l){
                return AjaxResult.error("该社团已有社长，无法进行申请！");
            }
        }
        LoginUser loginUser=tokenService.getLoginUser(ServletUtils.getRequest());
        bsPresidentApply.setPresidentId(loginUser.getUser().getUserId());
        return toAjax(bsPresidentApplyService.insertBsPresidentApply(bsPresidentApply));
    }

    /**
     * 修改社长申请
     */
    @PreAuthorize("@ss.hasPermi('community:presidentapply:edit')")
    @Log(title = "社长申请", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BsPresidentApply bsPresidentApply)
    {
        int result=bsPresidentApplyService.updateBsPresidentApply(bsPresidentApply);
        if(result==1){
            BsSocieties bsSocieties=new BsSocieties();
            bsSocieties.setSocietiesId(bsPresidentApply.getSocietiesId());
            bsSocieties.setPresidentId(bsPresidentApply.getPresidentId());
            bsSocietiesService.updateBsSocieties(bsSocieties);
        }
        return toAjax(result);
    }

    /**
     * 删除社长申请
     */
    @PreAuthorize("@ss.hasPermi('community:presidentapply:remove')")
    @Log(title = "社长申请", businessType = BusinessType.DELETE)
	@DeleteMapping("/{applyIds}")
    public AjaxResult remove(@PathVariable Long[] applyIds)
    {
        return toAjax(bsPresidentApplyService.deleteBsPresidentApplyByIds(applyIds));
    }
}
