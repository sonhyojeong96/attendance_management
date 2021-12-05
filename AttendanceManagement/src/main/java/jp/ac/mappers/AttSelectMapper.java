package jp.ac.mappers;

import java.util.List;

import jp.ac.beans.AttSelectModel;

public interface AttSelectMapper {
	
	// ログインしたIDの勤務リストを持ってくる
	public List<AttSelectModel> attSelect(int employeeId) throws Exception;
	
}
