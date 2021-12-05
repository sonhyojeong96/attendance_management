package jp.ac.controller;

import static org.junit.jupiter.api.Assertions.*;
import javax.servlet.http.HttpServletRequest;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.ac.beans.HolidayApplyModel;

class HomeControllerTest {

	@BeforeEach
	void setUp() throws Exception {
	}


	@Test
	void testHolidaySelect() {
	
		// 画面で選択した年度・月
	    String year =  "2021";
		String  month =  "01";
		
		assertEquals("2021", year);
		assertEquals("01", month);
		
	}

	
//	@Test
//	void testHolidayApply() {
//		fail("Not yet implemented");
//	}
//	
//	@Test
//	void testHolidayInsert() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	void testHolidayDelete() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	void testHolidaySave() {
//		fail("Not yet implemented");
//	}

}
