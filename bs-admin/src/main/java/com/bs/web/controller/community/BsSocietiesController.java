package com.bs.web.controller.community;

import java.util.List;
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
import com.bs.community.domain.BsSocieties;
import com.bs.community.service.IBsSocietiesService;
import com.bs.common.utils.poi.ExcelUtil;
import com.bs.common.core.page.TableDataInfo;

/**
 * 社团Controller
 * 
 * @author bs
 * @date 2021-01-31
 */
@RestController
@RequestMapping("/community/societies")
public class BsSocietiesController extends BaseController
{
    @Autowired
    private IBsSocietiesService bsSocietiesService;

    /**
     * 查询社团列表
     */
    @GetMapping("/hotlist")
    public TableDataInfo hotlist(BsSocieties bsSocieties)
    {
        startPage(0,6);
        List<BsSocieties> list = bsSocietiesService.selectBsSocietiesList(bsSocieties);
        return getDataTable(list);
    }

    /**
     * 查询社团列表
     */
    @GetMapping("/list")
    public TableDataInfo list(BsSocieties bsSocieties)
    {
        startPage();
        List<BsSocieties> list = bsSocietiesService.selectBsSocietiesList(bsSocieties);
        return getDataTable(list);
    }

    /**
     * 导出社团列表
     */
    @PreAuthorize("@ss.hasPermi('community:societies:export')")
    @Log(title = "社团", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(BsSocieties bsSocieties)
    {
        List<BsSocieties> list = bsSocietiesService.selectBsSocietiesList(bsSocieties);
        ExcelUtil<BsSocieties> util = new ExcelUtil<BsSocieties>(BsSocieties.class);
        return util.exportExcel(list, "societies");
    }

    /**
     * 获取社团详细信息
     */
    @GetMapping(value = "/{societiesId}")
    public AjaxResult getInfo(@PathVariable("societiesId") Long societiesId)
    {
        return AjaxResult.success(bsSocietiesService.selectBsSocietiesById(societiesId));
    }

    /**
     * 新增社团
     */
    @PreAuthorize("@ss.hasPermi('community:societies:add')")
    @Log(title = "社团", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BsSocieties bsSocieties)
    {
        return toAjax(bsSocietiesService.insertBsSocieties(bsSocieties));
    }

    /**
     * 修改社团
     */
    @PreAuthorize("@ss.hasPermi('community:societies:edit')")
    @Log(title = "社团", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BsSocieties bsSocieties)
    {
        return toAjax(bsSocietiesService.updateBsSocieties(bsSocieties));
    }

    /**
     * 删除社团
     */
    @PreAuthorize("@ss.hasPermi('community:societies:remove')")
    @Log(title = "社团", businessType = BusinessType.DELETE)
	@DeleteMapping("/{societiesIds}")
    public AjaxResult remove(@PathVariable Long[] societiesIds)
    {
        return toAjax(bsSocietiesService.deleteBsSocietiesByIds(societiesIds));
    }
}
