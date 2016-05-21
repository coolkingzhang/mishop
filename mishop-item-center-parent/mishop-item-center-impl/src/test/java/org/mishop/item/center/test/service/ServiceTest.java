package org.mishop.item.center.test.service;

import java.util.ArrayList;
import java.util.List;

import org.easymock.EasyMock;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson.JSON;
import com.mishop.item.center.common.model.Country;
import com.mishop.item.center.dao.CountryMapper;
import com.mishop.item.center.service.CountryService;
import com.mishop.item.center.service.bo.CountryBo;

// http://www.cnblogs.com/AloneSword/p/4109407.html 非常不错的关于junit mock的介绍

/*
 * 
 * 
 * 
    @BeforeClass 全局只会执行一次，而且是第一个运行
    @Before 在测试方法运行之前运行
    @Test 测试方法
    @After 在测试方法运行之后允许
    @AfterClass 全局只会执行一次，而且是最后一个运行
    @Ignore 忽略此方法

 * 
 * 
 */

public class ServiceTest extends BaseTest {

	@Autowired
	private CountryMapper countryMapper;

	@Autowired
	private CountryService countryService;

	@BeforeClass
	public static void beforeclass() throws Exception {
		System.out.println();
		System.out.println("---------------------------------------Testting start :");
	}

	@AfterClass
	public static void afterclass() {
		System.out.println("---------------------------------------Testting end :");
		while (true)
			;
	}

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

	// @Test
	public void selectById() {
		Country record = countryMapper.selectByPrimaryKey(888);
		System.out.println(JSON.toJSONString(record));
	}

	// @Ignore
	@Test
	public void testservice() {
		CountryBo record = countryService.selectByKeyService(888);
		System.out.println(JSON.toJSONString(record));
	}

	// @Test
	public void easymock() {
		List list = EasyMock.createMock(List.class);
		// 录制过程

		// 期望方法list.set(0,1)执行2次，返回null，不抛出异常
		expect1: EasyMock.expect(list.set(0, 1)).andReturn(null).times(2);
		// 期望方法list.set(0,1)执行1次，返回null，不抛出异常
		expect2: EasyMock.expect(list.set(0, 1)).andReturn(1);

		// 执行测试代码
		EasyMock.replay(list);
		// 执行list.set(0,1)，匹配expect1期望，会返回null
		Assert.assertNull(list.set(0, 1));
		// 执行list.set(0,1)，匹配expect1（因为expect1期望执行此方法2次），会返回null
		Assert.assertNull(list.set(0, 1));
		// 执行list.set(0,1)，匹配expect2，会返回1
		Assert.assertEquals(1, list.set(0, 1));

		// 验证期望
		EasyMock.verify(list);
	}
}
