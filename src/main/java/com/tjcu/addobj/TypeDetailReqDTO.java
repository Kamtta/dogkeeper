package com.tjcu.addobj;

import com.tjcu.bean.DetailContent;
import lombok.Data;

import java.util.List;

/**
 * @author lt
 */
@Data
public class TypeDetailReqDTO {

    private Integer id;

    private Integer typeId;

    private String typeTitle;

    private String contentTitle;

    private List<DetailContent> detailContents;

}
