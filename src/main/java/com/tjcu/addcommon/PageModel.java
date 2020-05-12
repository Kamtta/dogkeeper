package com.tjcu.addcommon;

import lombok.Data;

/**
 * @author lt
 */
@Data
public class PageModel<T> {

    private Integer pageNum;

    private Long total;

    private T data;
}
