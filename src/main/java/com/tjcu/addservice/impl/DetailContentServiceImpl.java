package com.tjcu.addservice.impl;

import com.tjcu.addcommon.Result;
import com.tjcu.addcommon.ResultMessage;
import com.tjcu.adddao.DetailContentRepository;
import com.tjcu.addservice.DetailContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 12749
 */
@Service
public class DetailContentServiceImpl implements DetailContentService {

    @Autowired
    DetailContentRepository detailContentRepository;


    @Override
    public ResultMessage get() {
        return Result.success(detailContentRepository.selectByExample(null));
    }
}
