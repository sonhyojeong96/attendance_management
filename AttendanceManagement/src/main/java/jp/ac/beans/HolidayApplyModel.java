package jp.ac.beans;

import java.sql.Timestamp;
import lombok.Data;

@Data
public class HolidayApplyModel {		//社員年暇テーブル
	private int seriesNum;				//一連番号
	private int employeeId;				//社員ID
	private String employeeName;		//社員名
	private int yearTimeCode;			//年暇コード
	private String fromDate;			//開始日
	private String toDate;				//終了日
	private String grounds;				//事由
	private int days;					//日数
	private int approvalCode;			//承認区分コード
	private String registred;			//登録者
	private Timestamp registredTime;	//登録日時
	private String updated;				//更新者
	private Timestamp updatedTime;		//更新日時
	
	private String year;
	private int code;
	private String codeName;
}
