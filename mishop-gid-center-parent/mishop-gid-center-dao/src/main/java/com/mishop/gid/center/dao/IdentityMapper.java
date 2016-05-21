package com.mishop.gid.center.dao;

import org.apache.ibatis.annotations.Param;
import com.mishop.gid.center.common.model.Identity;
import com.mishop.gid.center.util.MyMapper;

public interface IdentityMapper extends MyMapper<Identity> {
	public Identity findIdentity(@Param("system") String system, @Param("subSys") String subSys,
			@Param("module") String module, @Param("tableName") String tableName);

	public Integer updateIdentity(@Param("identity") Identity identity, @Param("newValue") Long newValue,
			@Param("exceptValue") Long exceptValue);
}