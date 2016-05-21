package com.mishop.item.center.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.mishop.item.center.common.model.Country;
import com.mishop.item.center.common.page.PageParam;

/**
 * 通用接口
 */
public interface IService<T> { 

    T selectByKey(Object key);

    int save(T entity);

    int delete(Object key);

    int update(T entity);

    int updateSelective(T entity);

    List<T> selectByExample(Object example);
    
//    PageInfo<T> listPage(PageParam pageParam);

    //TODO 其他...
}
