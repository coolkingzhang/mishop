package com.mishop.gid.center.service;

public interface MyIdentityService {

	/**
	 * @param system
	 * @param subSys
	 * @param module
	 * @param table
	 * @return
	 */
	public Long generateId(String system, String subSys, String module, String table);

	public String generateUuid();

}
