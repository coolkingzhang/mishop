package com.mishop.gid.center.service;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class ServiceTest extends BaseTest {

	@Autowired
	private MyIdentityService identityService;

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

	@Test
	public void insert() {

		for (int i = 0; i < 2500; i++) {
			Long id = identityService.generateId("tclshop", "dealer", "wap", "identity");
			System.out.println(id);
		}

		System.out.println(identityService.generateUuid());
	}

}
