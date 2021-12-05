package jp.ac.beans;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class CommonModel {
	private int code;
	private String codename;
	private String registred;
	private Timestamp registredtime;
	private String updated;
	private Timestamp updatedtime;
}
