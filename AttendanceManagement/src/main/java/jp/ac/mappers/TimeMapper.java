package jp.ac.mappers;

import java.sql.Timestamp;
import java.util.Date;

public interface TimeMapper {

	public String clockSaveAtt(Timestamp clock, int id) throws Exception;
	// 出勤時間記録

	public String clockSaveLea(Timestamp clock, Timestamp attend, int id) throws Exception;
	// 退勤時間記録
	
	public String submit(String submit, int id, Timestamp attend) throws Exception;
	// 勤務内容
	
	public String modificationTime(Timestamp start,Timestamp end, String modificationClass,  int id, Timestamp attend) throws Exception;
	//勤務修正
}
