package com.tjcu.a_service.impl;

import com.tjcu.a_common.Result;
import com.tjcu.a_common.ResultMessage;
import com.tjcu.a_dao.DetailContentRepository;
import com.tjcu.a_service.DetailContentService;
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
