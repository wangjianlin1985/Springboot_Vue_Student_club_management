package com.bs.web.controller.community;

import java.util.List;

import com.bs.common.utils.DateUtils;
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
import com.bs.community.domain.BsSocietiesComment;
import com.bs.community.service.IBsSocietiesCommentService;
import com.bs.common.utils.poi.ExcelUtil;
import com.bs.common.core.page.TableDataInfo;

/**
 * 活动评论Controller
 * 
 * @author bs
 * @date 2021-02-04
 */
@RestController
@RequestMapping("/community/societiescomment")
public class BsSocietiesCommentController extends BaseController
{
    @Autowired
    private IBsSocietiesCommentService bsSocietiesCommentService;

    /**
     * 查询活动评论列表
     */
    @GetMapping("/list")
    public TableDataInfo list(BsSocietiesComment bsSocietiesComment)
    {
        startPage();
        List<BsSocietiesComment> list = bsSocietiesCommentService.selectBsSocietiesCommentList(bsSocietiesComment);
        for (BsSocietiesComment item :list) {
            BsSocietiesComment query =new BsSocietiesComment();
            query.setReplyId(item.getId());
            List<BsSocietiesComment> childrenList = bsSocietiesCommentService.selectBsSocietiesCommentList(query);
            item.setChildrenList(childrenList);
        }
        return getDataTable(list);
    }

    /**
     * 导出活动评论列表
     */
    @PreAuthorize("@ss.hasPermi('community:societiescomment:export')")
    @Log(title = "活动评论", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(BsSocietiesComment bsSocietiesComment)
    {
        List<BsSocietiesComment> list = bsSocietiesCommentService.selectBsSocietiesCommentList(bsSocietiesComment);
        ExcelUtil<BsSocietiesComment> util = new ExcelUtil<BsSocietiesComment>(BsSocietiesComment.class);
        return util.exportExcel(list, "societiescomment");
    }

    /**
     * 获取活动评论详细信息
     */
    @PreAuthorize("@ss.hasPermi('community:societiescomment:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bsSocietiesCommentService.selectBsSocietiesCommentById(id));
    }

    /**
     * 新增活动评论
     */
    @Log(title = "活动评论", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BsSocietiesComment bsSocietiesComment)
    {
        bsSocietiesComment.setCreatedate(DateUtils.getNowDate());
        return toAjax(bsSocietiesCommentService.insertBsSocietiesComment(bsSocietiesComment));
    }

    /**
     * 修改活动评论
     */
    @Log(title = "活动评论", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BsSocietiesComment bsSocietiesComment)
    {
        return toAjax(bsSocietiesCommentService.updateBsSocietiesComment(bsSocietiesComment));
    }

    /**
     * 删除活动评论
     */
    @PreAuthorize("@ss.hasPermi('community:societiescomment:remove')")
    @Log(title = "活动评论", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bsSocietiesCommentService.deleteBsSocietiesCommentByIds(ids));
    }
}
