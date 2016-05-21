package com.mishop.gid.center.service.impl;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mishop.gid.center.service.IdentityService;
import com.mishop.gid.center.service.MyIdentityService;

@Service
public class MyIdentityServiceImpl implements MyIdentityService {

	@Autowired
	private IdentityService identityService;

	private static final Map<String, AtomicLong> identityMap = new HashMap<String, AtomicLong>();

	public Long generateId(String system, String subSys, String module, String tableName) {
		String cachedKey = system + subSys + module + tableName;
		synchronized (cachedKey) {
			AtomicLong identityAtomicLong = identityMap.get(cachedKey);
			if (identityAtomicLong == null) {
				Long idprefix = identityService.generateId(system, subSys, module, tableName);
				identityAtomicLong = new AtomicLong(idprefix * 1000);
				identityMap.put(cachedKey, identityAtomicLong);
			}
			Long idvalue = identityAtomicLong.getAndIncrement();
			if (idvalue % 1000 == 999) {
				Long idprefix = identityService.generateId(system, subSys, module, tableName);
				identityAtomicLong = new AtomicLong(idprefix * 1000);
				identityMap.put(cachedKey, identityAtomicLong);
			}
			return idvalue;
		}
	}

	public String generateUuid() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replaceAll("\\-", "");
	}
}
