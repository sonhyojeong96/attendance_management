package jp.ac.beans;


public class PageModel {

	// ブロックスタートページ
	private int startPage;
	
	// ブロック最後ページ
	private int endPage;
	
	// 以前ページ、次のページ有無
	private boolean prev, next;
	
	// 総掲示物数
	private int total;
	
	// 現在ページやページ表示数の情報
	private Criteria cri;
	
	// コンストラクタ
	public PageModel(Criteria cri, int total) {
		
		this.cri = cri;
		this.total = total;
		
		// ブロック最後ページ
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0))*10;
		// ブロックスタートページ
		this.startPage = this.endPage - 9;
		
		// 総ページ数
		int realEnd = (int)(Math.ceil(total * 1.0 / cri.getAmount()));
		
		// 総ページ数(realEnd)が表示されたブロック最後ページ(endPage)より小さい場合
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		// ブロックスタートページ(startPage)が1より大きい場合 : true
		this.prev = this.startPage > 1;

		// ブロック最後ページ(endPage)が1より大きい場合 : true
		this.next = this.endPage < realEnd;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}

	@Override
	public String toString() {
		return "PageModel [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", cri=" + cri + "]";
	}
	
}
