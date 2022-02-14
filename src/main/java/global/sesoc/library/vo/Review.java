package global.sesoc.library.vo;


public class Review {
	private int reviewnum;
	private int booknum;
	private String id;
	private String content;
	private String inputdate;
	private int likecnt;
	
	
	public Review(int reviewnum, int booknum, String id, String content, String inputdate, int likecnt) {
		super();
		this.reviewnum = reviewnum;
		this.booknum = booknum;
		this.id = id;
		this.content = content;
		this.inputdate = inputdate;
		this.likecnt = likecnt;
	}


	public int getReviewnum() {
		return reviewnum;
	}


	public void setReviewnum(int reviewnum) {
		this.reviewnum = reviewnum;
	}


	public int getBooknum() {
		return booknum;
	}


	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getInputdate() {
		return inputdate;
	}


	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}


	public int getLikecnt() {
		return likecnt;
	}


	public void setLikecnt(int likecnt) {
		this.likecnt = likecnt;
	}


	@Override
	public String toString() {
		return "Review [reviewnum=" + reviewnum + ", booknum=" + booknum + ", id=" + id + ", content=" + content
				+ ", inputdate=" + inputdate + ", likecnt=" + likecnt + "]";
	}
	
}
