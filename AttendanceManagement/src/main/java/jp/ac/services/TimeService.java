package jp.ac.services;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import jp.ac.beans.MemberModel;
import jp.ac.mappers.MemberMapper;
import jp.ac.mappers.TimeMapper;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TimeService {
	@Autowired
	TimeMapper TimeMapper;

	public String Clocksaveatt(Timestamp clock, int id) throws Exception {
		System.out.print("clock"+clock);
		return TimeMapper.clockSaveAtt(clock, id);
	}
	// 出勤時間記録

	public String Clocksavelea(Timestamp clock, Timestamp attend, int id) throws Exception {
		return TimeMapper.clockSaveLea(clock, attend, id);
	}
	// 退勤時間記録
	
	public String Submit(String submit, int id, Timestamp attend) throws Exception {
		return TimeMapper.submit(submit, id, attend);
	}
	// 勤務内容
	
	public String modificationTime(Timestamp start,Timestamp end, String modificationClass,  int id, Timestamp attend) throws Exception {
		return TimeMapper.modificationTime(start, end, modificationClass, id, attend);
	}
	// 勤務修正
}
