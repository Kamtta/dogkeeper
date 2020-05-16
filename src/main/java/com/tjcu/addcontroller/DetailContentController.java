package com.tjcu.addcontroller;

import com.tjcu.addcommon.ResultMessage;
import com.tjcu.addobj.TypeDetailReqDTO;
import com.tjcu.addservice.DetailContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 内容详情Controller
 * @author lt
 * @date 2010/5/12
 */
@RestController
@RequestMapping(value = "detailContent")
public class DetailContentController {

    @Autowired
    DetailContentService detailContentService;

    @GetMapping(value = "get")
    public ResultMessage test(){
        return detailContentService.get();
    }

    /**
     * 保存
     * @param typeDetailReqDTO
     * @return
     */
    @PostMapping(value = "saveDetail")
    public ResultMessage saveDetail(@RequestBody TypeDetailReqDTO typeDetailReqDTO) {
        return detailContentService.saveDetail(typeDetailReqDTO);
    }

    /**
     * 类型列表 点进日常护理的列表
     * @param typeId
     * @return
     */
    @GetMapping(value = "getTypeList")
    public ResultMessage getTypeList(@RequestParam Integer typeId) {
        return detailContentService.getTypeList(typeId);
    }

    /**
     * 详情列表
     * @param typeId  上边的类型列表主键
     * @return
     */
    @GetMapping(value = "getContentList")
    public ResultMessage getContentList(@RequestParam Integer typeId) {
        return detailContentService.getContentList(typeId);
    }





}
