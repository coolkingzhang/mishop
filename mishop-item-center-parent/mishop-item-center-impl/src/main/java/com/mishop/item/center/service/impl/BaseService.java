package com.mishop.item.center.service.impl;

import tk.mybatis.mapper.common.Mapper;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mishop.item.center.common.model.Country;
import com.mishop.item.center.common.page.PageParam;
import com.mishop.item.center.service.IService;
import com.mishop.item.center.util.MyMapper;

@Service
public abstract class BaseService<T> implements IService<T> {

	@Autowired
	protected Mapper<T> mapper;

	public Mapper<T> getMapper() {
		return mapper;
	}

	@Override
	public T selectByKey(Object key) {
		return mapper.selectByPrimaryKey(key);
	}

	public int save(T entity) {
		return mapper.insert(entity);
	}

	public int delete(Object key) {
		return mapper.deleteByPrimaryKey(key);
	}

	public int update(T entity) {
		return mapper.updateByPrimaryKey(entity);
	}

	public int updateSelective(T entity) {
		return mapper.updateByPrimaryKeySelective(entity);
	}

	public List<T> selectByExample(Object example) {

		return mapper.selectByExample(example);
	}

//	public PageInfo<T> listPage(PageParam pageParam) {
//
//		PageHelper.startPage(pageParam.getPageNum(), pageParam.getNumPerPage());
//		List<T> list = mapper.listpage();
//		PageInfo<T> pageInfo = new PageInfo<T>(list);
//		return pageInfo;
//	}
	// TODO 其他...
}
