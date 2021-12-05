package jp.ac.services;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import jp.ac.mappers.LoginMapper;
import lombok.RequiredArgsConstructor;
import jp.ac.beans.LoginModel;

@Service
@RequiredArgsConstructor
public class LoginService {
	@Autowired
	LoginMapper LoginMapper;

	public String logincheck(LoginModel id, HttpSession session) throws Exception {
		String employeeId = LoginMapper.logincheck(id);
		return employeeId;
	}
	//DBにデータを読み込んでcontrollerに送る。

}
