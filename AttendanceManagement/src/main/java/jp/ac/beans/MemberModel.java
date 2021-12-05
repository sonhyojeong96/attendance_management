package jp.ac.beans;

import java.sql.Timestamp;

import lombok.Data;
@Data
public class MemberModel {
	private int employeeId; //社員ID;
	private String departCode; //部署コード;
	private String employName; //社員名;
	private String loginId; //ログインID;
	private String loginPass; //ログインパスワード;
	private String phonetic; //フリガナ;
	private String zipcode; //郵便番号;
	private String address1; //住所1;
	private String address2; //住所2;
	private String phoneNum; //電話番号;
	private String mobileNum; //携帯番号;
	private String email; //メール;
	private String registred; //登録者;
	private Timestamp registredTime; //登録日時;
	private String updated; //更新者;
	private Timestamp updatedTime; //更新日時;
}
