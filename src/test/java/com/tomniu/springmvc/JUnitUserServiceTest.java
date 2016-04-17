package com.tomniu.springmvc;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import javax.annotation.Resource;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;

import com.tomniu.springmvc.service.UserService;
import com.tomniu.springmvc.service.UserServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=UserServiceImpl.class, loader=AnnotationConfigContextLoader.class)
public class JUnitUserServiceTest {
	@Resource(name="userService")
	private UserService userService;

	@Before
	public void before() {
		System.out.println("------> before <------");
	}
	
	@After
	public void after() {
		System.out.println("------> after <------");
	}
	
	@BeforeClass
	public static void beforeClass() {
		System.out.println("------> beforeClass <------");
	}
	
	@AfterClass
	public static void afterClass() {
		System.out.println("------> afterClass <------");
	}
	
	@Test
	public void findAllUsersTest() {
		assertNotNull(userService.findAllUsers());
	}
	
	@Test
	public void findByIdTest(){
		assertEquals(userService.findById(1).getId(),2);
	}
	
	@Ignore	
	public void updateUserTest(){
		
	}
}
