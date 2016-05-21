package com.mishop.item.center.service;

import java.util.List;
import com.mishop.item.center.common.model.Country;
import com.mishop.item.center.service.bo.CountryBo;

public interface CountrySoaService {
	public List<Country> selectByCountry(Country country, Integer page, Integer rows);

	public CountryBo selectByKeyBo(Object key);
	
	public CountryBo selectByKeyService(Object key);
}
