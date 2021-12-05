package jp.ac.mappersTest;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import jp.ac.beans.MemberModel;
import jp.ac.mappers.MemberMapper;
import lombok.extern.java.Log;
@Log
@SpringBootTest
@RunWith(SpringRunner.class)
public class MemberMapperTest {
	// given 準備
	@Autowired
	MemberMapper MemberMapper;
	
	private MemberModel initData;
	
	@Before
    public void setup() throws Exception {
        initData = new MemberModel();
        initData.setEmployeeId(5);
        initData.setDepartCode("12");
        initData.setEmployName("jgm");
        initData.setLoginId("q");
        initData.setLoginPass("qwe");
        initData.setPhonetic("jgm");
        initData.setZipcode("125");
        initData.setAddress1("qwe");
        initData.setAddress2("qwe");
        initData.setPhoneNum("090");
        initData.setMobileNum("2767");
        initData.setEmail("gamil");
    }
	// when 実行
	@Test
	public void create() throws Exception {
		MemberMapper.save(initData);
		// then 結果
		log.info("-------------------------");
		log.info("result: " + initData.getEmployName());
	}
}
