package jp.ac.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.ac.beans.CommonModel;
import jp.ac.beans.Criteria;
import jp.ac.mappers.CommonMapper;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CommonService {

	@Autowired
	 CommonMapper CommonMapper;
	
	// 共通コード検索
	public CommonModel getCommonCode(int code) throws Exception {
		return CommonMapper.getCommonCode(code);
	}
	
	// 共通マスター コード挿入
	public void insertCommon(CommonModel model) throws Exception {
		CommonMapper.insertCommon(model);
	}
	
	// 共通マスターリスト
	public List<CommonModel> commonCodeList(String kind) throws Exception {
		return CommonMapper.commonCodeList(kind);
	}
	
	// 共通マスターリスト(ページング適用)
	public List<CommonModel> getListPaging(Criteria cri) throws Exception {
		return CommonMapper.getListPaging(cri);
	}
	
	// 総レコード数
	public int getTotalRecord(Criteria cri) throws Exception {
		return CommonMapper.getTotalRecord(cri);
	}
	
	// 共通マスター コード削除
	public int commonCodeDelete(int code) throws Exception {
		return CommonMapper.commonCodeDelete(code);
	}
	
	// 共通マスター コード修正
	public void  commonCodeModify(CommonModel model) throws Exception {
		CommonMapper.commonCodeModify(model);
	}
}
