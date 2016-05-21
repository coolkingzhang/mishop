package com.mishop.item.center.service.impl;

import java.util.List;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.mishop.item.center.common.model.Country;
import com.mishop.item.center.service.CountryService;
import com.mishop.item.center.service.CountrySoaService;
import com.mishop.item.center.service.bo.CountryBo;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.util.StringUtil;

@Service("countryService")
public class CountryServiceImpl extends BaseService<Country> implements CountryService, CountrySoaService {

	@Autowired
	protected Mapper<Country> countryMapper;

	public List<Country> selectByCountry(Country country, Integer page, Integer rows) {
		Example example = new Example(Country.class);
		Example.Criteria criteria = example.createCriteria();
		if (StringUtil.isNotEmpty(country.getCountryname())) {
			criteria.andLike("countryname", "%" + country.getCountryname() + "%");
		}
		if (StringUtil.isNotEmpty(country.getCountrycode())) {
			criteria.andLike("countrycode", "%" + country.getCountrycode() + "%");
		}
		if (country.getId() != null) {
			criteria.andEqualTo("id", country.getId());
		}
		// 分页查询
		PageHelper.startPage(page, rows);
		return selectByExample(example);
	}
	// public PageInfo<Country> listPage(PageParam pageParam) {
	// PageHelper.startPage(pageParam.getPageNum(), pageParam.getNumPerPage());
	// List<Country> list = countryMapper.listpage();
	// System.out.println(JSON.toJSONString(list));
	// PageInfo<Country> pageInfo = new PageInfo<Country>(list);
	// System.out.println(JSON.toJSONString(pageInfo));
	// return pageInfo;
	// }

	public CountryBo selectByKeyBo(Object key) {
		Country country = super.selectByKey(key);
		CountryBo countryBo = new CountryBo();
		BeanUtils.copyProperties(country, countryBo);
		return countryBo;
	}

	public CountryBo selectByKeyService(Object key) {
		Country country = mapper.selectByPrimaryKey(key);
		CountryBo countryBo = new CountryBo();
		BeanUtils.copyProperties(country, countryBo);
		return countryBo;
	}

}
