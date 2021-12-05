package jp.ac.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import jp.ac.beans.LoginModel;
import jp.ac.beans.MemberModel;

public interface LoginMapper{

	public String logincheck(LoginModel id) throws Exception;
	
}