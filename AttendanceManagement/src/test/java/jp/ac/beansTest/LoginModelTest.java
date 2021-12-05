package jp.ac.beansTest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import jp.ac.beans.LoginModel;
import org.junit.Test;
import org.junit.runner.RunWith;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)

@SpringBootTest(properties = { "id.value=1", "passWordValue=123" })
public class LoginModelTest {
	@Value("${id.value}")
	private String idTest;
	@Value("${passWordValue}")
	private String passWordTest;
	
	@Test
	public void Test() {
		// given 準備
		String id = "1";
		String passWord = "123";

		// when 実行
		LoginModel account = new LoginModel(id, passWord);

		// then 結果
		assertThat(account.getId()).isEqualTo(id);
		assertThat(account.getPassWord()).isEqualTo(passWord);
	}
	@Test
	public void propertiesTest() {
		// when 実行
		LoginModel account = new LoginModel(idTest, passWordTest);

		// then 結果
		assertThat(account.getId()).isEqualTo(idTest);
		assertThat(account.getPassWord()).isEqualTo(passWordTest);
	}

}
