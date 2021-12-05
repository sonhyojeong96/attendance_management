package jp.ac.beans;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class AttSelectModel {
	private int timeId;	// 勤怠
	private int employeeId;	// 社員
	private String date1;	// 日付
	private Timestamp attendTime;	// 出勤時刻
	private Timestamp leaveTime;	// 退勤時刻
	private String busindescCode;	// 業務内容コード
	private int overTimeClass;	// 超過勤怠区分
	private Timestamp overTimeStartTime;		// 超過開始時刻
	private Timestamp overTimeEndTime;	// 超過終了時刻
	private int overWorkTime;	// 超過勤怠時刻
	private String registred;	// 登録者
	private Timestamp registredTime;	// 登録日時
	private String updated;	// 更新者
	private Timestamp updatedTime;	// 更新日時
	private String workContents;	// 勤務内容
	private String overWorkContents;	// 超過勤務内容
}
