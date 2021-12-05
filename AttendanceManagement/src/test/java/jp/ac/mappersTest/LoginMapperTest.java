package jp.ac.mappersTest;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import jp.ac.beans.LoginModel;
import jp.ac.mappers.LoginMapper;
import lombok.extern.java.Log;
import jp.ac.DatabaseConfig;

@RunWith(SpringRunner.class)
@SpringBootTest
@Log
public class LoginMapperTest {

	// given 準備
	@Autowired
	LoginMapper LoginMapper;
	private LoginModel account;

	@Before
	public void setup() {
		account = new LoginModel("a", "qwe");
	}
	
	// when 実行
	@Test
	public void Login() throws Exception {
		String result = LoginMapper.logincheck(account);
		// then 結果
		log.info("-------------------------");
		log.info("result: " + LoginMapper.logincheck(account));
	}
}
