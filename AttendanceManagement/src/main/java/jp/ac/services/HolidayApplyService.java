package jp.ac.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.ac.beans.HolidayApplyModel;
import jp.ac.mappers.HolidayApplyMapper;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class HolidayApplyService {

	@Autowired
	HolidayApplyMapper mapper;
	
	//セッションIDでユーザー名を取得
	public String getEmpName(String id) throws Exception {
		return mapper.getEmpName(id);
	}
	
	//休暇申請テーブルのシリアルナンバーの中で最も大きい数字を取得
	public int getMaxSeriesNum() throws Exception {
		return mapper.getMaxSeriesNum();
	}
	
	//休暇申請
	public void holidayInsert(HolidayApplyModel model) throws Exception {
		mapper.holidayInsert(model);
	}
	
	//申請リスト
	public List<HolidayApplyModel> holidayList(int employeeId, String year, String month) {
		return mapper.holidayList(employeeId, year, month);
	}
	
	//申請リスト
	public List<HolidayApplyModel> holidayType(){
		return mapper.holidayType();
	}
		
	//リスト削除
	public int holidayDelete(int seriesNum) {
		return mapper.holidayDelete(seriesNum);
	}
}
