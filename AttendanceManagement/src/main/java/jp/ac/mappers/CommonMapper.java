package jp.ac.mappers;

import java.util.List;
import java.util.Map;

import jp.ac.beans.CommonModel;
import jp.ac.beans.Criteria;

public interface CommonMapper {

	// 共通コード検索
	public CommonModel getCommonCode(int code) throws Exception;
	
	// 共通マスターコード挿入
	public void insertCommon(CommonModel model) throws Exception;

	// 共通マスターリスト
	public List<CommonModel> commonCodeList(String kind) throws Exception;
	
	// 共通マスターリスト(ページング適用)
	public List<CommonModel> getListPaging(Criteria cri);
	
	// 総レコード数
	public int getTotalRecord(Criteria cri);
	
	// 共通マスター コード削除
	public int commonCodeDelete(int code); 
	
	// 共通マスター コード修正
	public void commonCodeModify(CommonModel model) throws Exception;

	
}
