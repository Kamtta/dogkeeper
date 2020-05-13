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


}
