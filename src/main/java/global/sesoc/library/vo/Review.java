package global.sesoc.library.vo;


public class Review {
	private int reviewnum;
	private String isbn;
	private String id;
	private String content;
	private String inputdate;
	private int likecnt;
	
	
	public Review(int reviewnum, String isbn, String id, String content, String inputdate, int likecnt) {
		super();
		this.reviewnum = reviewnum;
		this.isbn = isbn;
		this.id = id;
		this.content = content;
		this.inputdate = inputdate;
		this.likecnt = likecnt;
	}

	public Review() {
		
	}

	public int getReviewnum() {
		return reviewnum;
	}


	public void setReviewnum(int reviewnum) {
		this.reviewnum = reviewnum;
	}


	public String getIsbn() {
		return isbn;
	}


	public void setIsbn(String isbn) {
		this.isbn = isbn;
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
		return "Review [reviewnum=" + reviewnum + ", isbn=" + isbn + ", id=" + id + ", content=" + content
				+ ", inputdate=" + inputdate + ", likecnt=" + likecnt + "]";
	}
	
}
