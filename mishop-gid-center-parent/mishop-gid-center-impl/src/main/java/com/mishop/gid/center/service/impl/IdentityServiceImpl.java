package com.mishop.gid.center.service.impl;

import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mishop.gid.center.common.model.Identity;
import com.mishop.gid.center.dao.IdentityMapper;
import com.mishop.gid.center.service.IdentityService;

@Service("identityService")
public class IdentityServiceImpl implements IdentityService {

	@Autowired
	private IdentityMapper identityMapper;

	public Long generateId(String system, String subSys, String module, String tableName) {
		Identity identityobj = new Identity();
		identityobj.setSystem(system);
		identityobj.setSubSys(subSys);
		identityobj.setModule(module);
		identityobj.setTableName(tableName);

		Identity identityobj2 = identityMapper.findIdentity(system, subSys, module, tableName);
		if (identityobj2 == null) {
			identityobj.setIdentity(1L);
			identityobj.setCreateTime(new Date());
			identityobj.setUpdateTime(new Date());
			identityMapper.insert(identityobj);

			identityobj2 = identityMapper.findIdentity(system, subSys, module, tableName);
		}
		Integer row = 0;
		while (row <= 0) {
			row = identityMapper.updateIdentity(identityobj, identityobj2.getIdentity() + 1,
					identityobj2.getIdentity());
		}

		return identityobj2.getIdentity();
	}
}
