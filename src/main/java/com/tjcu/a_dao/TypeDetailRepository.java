package com.tjcu.a_dao;

import com.tjcu.bean.TypeDetail;
import com.tjcu.bean.TypeDetailExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TypeDetailRepository {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    long countByExample(TypeDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    int deleteByExample(TypeDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    int insert(TypeDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    int insertSelective(TypeDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    List<TypeDetail> selectByExample(TypeDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    TypeDetail selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    int updateByExampleSelective(@Param("record") TypeDetail record, @Param("example") TypeDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    int updateByExample(@Param("record") TypeDetail record, @Param("example") TypeDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    int updateByPrimaryKeySelective(TypeDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TYPE_DETAIL
     *
     * @mbg.generated Mon May 11 21:59:34 GMT+08:00 2020
     */
    int updateByPrimaryKey(TypeDetail record);
}