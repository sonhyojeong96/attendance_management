package jp.ac.mappers;

import java.util.List;

import jp.ac.beans.HolidayApplyModel;

public interface HolidayApplyMapper {

	//セッションIDでユーザー名を取得
	public String getEmpName(String id);
	
	//休暇申請テーブルのシリアルナンバーの中で最も大きい数字を取得
	public int getMaxSeriesNum();
	
	//休暇申請
	public void holidayInsert(HolidayApplyModel model);
	
	//申請リスト
	public List<HolidayApplyModel> holidayList(int employeeId, String year, String month);
	
	//申請リスト
	public List<HolidayApplyModel> holidayType();
		
	//リスト削除
	public int holidayDelete(int seriesNum);
	
}
