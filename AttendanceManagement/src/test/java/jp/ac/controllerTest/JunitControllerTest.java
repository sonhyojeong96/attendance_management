
package jp.ac.controllerTest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;

import jp.ac.beans.LoginModel;
import jp.ac.services.AttSelectService;
import jp.ac.services.HolidayApplyService;
import jp.ac.services.LoginService;
import jp.ac.services.MemberService;
import jp.ac.services.TimeService;
import jp.ac.util.Accountinfo;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;

@RunWith(SpringRunner.class)
@AutoConfigureMockMvc
@WebMvcTest
public class JunitControllerTest { // given 準備

	@Autowired
	private MockMvc mvc;

	@MockBean
	private TimeService TimeService;

	@MockBean
	private MemberService MemberService;

	@MockBean
	private LoginService LoginService;

	@MockBean
	private Accountinfo user;

	@MockBean
	private AttSelectService AttSelectService;

	@MockBean
	private HolidayApplyService holidayService;

	// when 実行

	@Test
	public void hello() throws Exception {
		String hello = "hello";

		mvc.perform(get("/hello")).andExpect(status().isOk()).andExpect(content().string(hello));
	}

	@Test
	public void testHello() throws Exception {
		String id = "1";
		String passWord = "123";

		mvc.perform(get("/hello/beans").param("id", id).param("passWord", passWord)).andExpect(status().isOk());
	} // then 結果

}
