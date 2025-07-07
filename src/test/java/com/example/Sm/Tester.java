package com.example.Sm;

import static org.junit.Assert.assertEquals;

import org.junit.jupiter.api.Test;
//import org.junit.Assert;

import com.example.Sm.Services.SmServices;

public class Tester {
	SmServices calc = new SmServices();
	
	@Test
	public void testAdd() {
//		assertEquals(30,calc.add(10,20));
		assertEquals(30,calc.add(10,20));
	}
	
}
