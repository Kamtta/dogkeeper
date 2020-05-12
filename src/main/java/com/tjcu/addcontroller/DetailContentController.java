package com.tjcu.addcontroller;

import com.tjcu.addcommon.ResultMessage;
import com.tjcu.addservice.DetailContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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


}
