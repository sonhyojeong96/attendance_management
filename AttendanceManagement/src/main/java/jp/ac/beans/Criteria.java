package jp.ac.beans;

import java.util.Arrays;

public class Criteria {
	
	// 現在ページ
	private int pageNum;
	
	// 1ページに表示するレコードの個数
	private int amount; 
	
	// 検索タイプ
	private String type;
	
	// 検索タイプ配列
	private String[] typeArr;
	
	// デフォルトコンストラクタ --> setting : pageNum = 1, amount = 10
	public Criteria() {
		this(1,10);
	}
	
	// コンストラクタ
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
		this.typeArr = type.split("");
	}

	public String[] getTypeArr() {
		return typeArr;
	}

	public void setTypeArr(String[] typeArr) {
		this.typeArr = typeArr;
	}

	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", type=" + type + ", typeArr="
				+ Arrays.toString(typeArr) + "]";
	}
	
}
