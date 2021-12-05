package jp.ac.services;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import jp.ac.beans.CommonModel;

@SpringBootTest
class commonCodeServiceTest {

	@Autowired
	private CommonService commonService;
	
	// 共通コード検索テスト
	@Test
	void testGetCommonCode() {
		
		try {
			CommonModel exCommonModel = commonService.getCommonCode(1011);
			assertEquals("SIMILE", exCommonModel.getCodename());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	// 共通コード挿入テスト
	@Test
	void testCommonInsert() {
		
		CommonModel exCommonModel = new CommonModel();
		
		// beansファイルに保存
		exCommonModel.setCode(1001);
		exCommonModel.setCodename("テストコード");
		
		try {
			commonService.insertCommon(exCommonModel);
			
			String kind = "1";
			
			List<CommonModel> commonList = commonService.commonCodeList(kind);
			
			assertEquals(1001, commonList.get(0).getCode());
			assertEquals("テストコード", commonList.get(0).getCodename());
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 共通コード削除テスト
	@Test
	void testCommonDelete() {
		try {
			int num = commonService.commonCodeDelete(1001);
			System.out.println(num);
			assertEquals(1, num);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 共通コード修正テスト
	@Test
	void testCommonModify() {
		
		CommonModel exCommonVO = new CommonModel();

		try {

			exCommonVO = commonService.getCommonCode(1001);
			assertEquals("テストコード", exCommonVO.getCodename());
			
			exCommonVO.setCodename("テストコード修正");
			commonService.commonCodeModify(exCommonVO);
			
			assertEquals("テストコード修正", exCommonVO.getCodename());

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
