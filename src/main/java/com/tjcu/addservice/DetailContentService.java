package com.tjcu.addservice;

import com.tjcu.addcommon.ResultMessage;
import com.tjcu.addobj.TypeDetailReqDTO;

/**
 * @author 12749
 */
public interface DetailContentService {

    ResultMessage get();

    ResultMessage saveDetail(TypeDetailReqDTO typeDetailReqDTO);

    ResultMessage getTypeList(Integer typeId);

    ResultMessage getContentList(Integer typeId);
}
