package com.mishop.item.cetner.test.dao;

import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mishop.item.center.common.model.Country;
import com.mishop.item.center.dao.CountryMapper;

public class DaoTest extends BaseTest {

	@Autowired
	private CountryMapper countryMapper;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	// @Test
	public void insert() {
		Country arg0 = new Country();
		arg0.setCountrycode("7788");
		countryMapper.insertSelective(arg0);
	}

	// @Test
	public void update() {
		Country arg0 = new Country();
		arg0.setCountrycode("898989");
		arg0.setId(888);
		arg0.setCountryname("我来测试了");
		countryMapper.updateByPrimaryKeySelective(arg0);
	}

	// @Test
	public void select() {
		List<Country> record = new ArrayList<Country>();
		record = countryMapper.selectAll();
		System.out.println(JSON.toJSONString(record));
	}

	 @Test
	public void selectById() {
		Country record = countryMapper.selectByPrimaryKey(888);
		System.out.println(JSON.toJSONString(record));
	}

	/*
	 * @Test
	 *//**
		 * 分页查出第一页，每页2条记录
		 *//*
		 * public void listpage() { PageHelper.startPage(6, 2); List<Country>
		 * list = countryMapper.listpage();
		 * System.out.println(JSON.toJSONString(list)); PageInfo<Country>
		 * pageInfo= new PageInfo<Country>(list);
		 * System.out.println(JSON.toJSONString(pageInfo)); }
		 */

	/*
	 * @Test public void testjdbc(){ jdbcTemplate.update(
	 * "update user_info set username='KKGG' where Id=1"); }
	 */
}
