package com.mishop.item.center.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.mishop.item.center.common.model.Country;
import com.mishop.item.center.common.page.PageParam;
import com.mishop.item.center.service.bo.CountryBo;

/**
 * @author liuzh_3nofxnp
 * @since 2015-09-19 17:17
 */
public interface CountryService extends IService<Country> {

	/**
	 * 根据条件分页查询
	 *
	 * @param country
	 * @param page
	 * @param rows
	 * @return
	 */
	public List<Country> selectByCountry(Country country, Integer page, Integer rows);
	
	public CountryBo selectByKeyService(Object key);
	
	public CountryBo selectByKeyBo(Object key);

}
