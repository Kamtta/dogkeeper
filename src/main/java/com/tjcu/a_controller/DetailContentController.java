package com.tjcu.a_controller;

import com.tjcu.a_common.ResultMessage;
import com.tjcu.a_service.DetailContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 12749
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
