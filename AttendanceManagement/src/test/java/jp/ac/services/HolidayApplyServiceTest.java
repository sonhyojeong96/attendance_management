package jp.ac.services;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import jp.ac.beans.HolidayApplyModel;

@SpringBootTest
class HolidayApplyServiceTest {

	@Autowired
	private HolidayApplyService holidayApplyService;

	@Test
	void testGetEmpName() {

		try {
			String exName = holidayApplyService.getEmpName("1");
			assertEquals("test", exName);
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	@Test
	void testGetMaxSeriesNum() {
		try {
			int MaxNm = holidayApplyService.getMaxSeriesNum();
			assertEquals(2, MaxNm);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Test
	void testHolidayInsert() {

		HolidayApplyModel HdModel = new HolidayApplyModel();

		// holidayApplyView.jspでデータを受け取ってbeansファイルに保存
		HdModel.setSeriesNum(2);
		HdModel.setEmployeeId(123);
		HdModel.setEmployeeName("test");
		HdModel.setYearTimeCode(6001);
		HdModel.setFromDate("2021-11-19 오전 12:00:00");
		HdModel.setToDate("2021-11-22 오전 12:00:00");
		HdModel.setGrounds("健康診断");
		HdModel.setRegistred("1");

		try {
			holidayApplyService.holidayInsert(HdModel);
			int empId = 123;
			String year = "2021";
			String month = "11";

			List<HolidayApplyModel> holidayList = holidayApplyService.holidayList(empId, year, month);

			assertEquals(2, holidayList.get(0).getSeriesNum());
			assertEquals(123, holidayList.get(0).getEmployeeId());
			assertEquals("test", holidayList.get(0).getEmployeeName());
			assertEquals(6001, holidayList.get(0).getYearTimeCode());
			assertEquals("2021-11-19 오전 12:00:00", holidayList.get(0).getFromDate());
			assertEquals("2021-11-22 오전 12:00:00", holidayList.get(0).getToDate());
			assertEquals("健康診断", holidayList.get(0).getGrounds());
			assertEquals("1", holidayList.get(0).getRegistred());

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Test
	void testHolidayType() {

	}

	@Test
	void testHolidayDelete() {
		// delete
		// select
		// assertNull(holidayList.get(0).getSeriesNum());
		try {
			int n = holidayApplyService.holidayDelete(2);
			System.out.print(n);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
