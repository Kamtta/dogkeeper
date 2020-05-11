package com.tjcu.a_dao;

import com.tjcu.bean.DetailContent;
import com.tjcu.bean.DetailContentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DetailContentRepository {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    long countByExample(DetailContentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    int deleteByExample(DetailContentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    int insert(DetailContent record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    int insertSelective(DetailContent record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    List<DetailContent> selectByExample(DetailContentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    DetailContent selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    int updateByExampleSelective(@Param("record") DetailContent record, @Param("example") DetailContentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    int updateByExample(@Param("record") DetailContent record, @Param("example") DetailContentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    int updateByPrimaryKeySelective(DetailContent record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DETAIL_CONTENT
     *
     * @mbg.generated Mon May 11 21:55:46 GMT+08:00 2020
     */
    int updateByPrimaryKey(DetailContent record);
}