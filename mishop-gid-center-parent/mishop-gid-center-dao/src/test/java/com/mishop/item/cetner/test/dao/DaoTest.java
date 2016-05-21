package com.mishop.item.cetner.test.dao;

import java.util.Date;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.mishop.gid.center.common.model.Identity;
import com.mishop.gid.center.dao.IdentityMapper;

public class DaoTest extends BaseTest {

	@Autowired
	private IdentityMapper identityMapper;

	@Test
	public void insert() {
		Identity identity = new Identity();
		identity.setCreateTime(new Date());
		identity.setIdentity(15l);
		identity.setModule("wap2");
		identity.setSubSys("dealer");
		identity.setSystem("tclshop");
		identity.setTableName("identity");
		identity.setUpdateTime(new Date());
		Integer result = identityMapper.insertSelective(identity);
		System.out.println(identity.getId());
	}
}
