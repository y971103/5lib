package global.sesoc.library.vo;


public class Essay {
	private int essaynum;
	private String id;
	private String title;
	private String content;
	private String inputdate;
	private int booknum;
	private int hits;
	
	public Essay(int essaynum, String id, String title, String content, String inputdate, int booknum, int hits) {
		super();
		this.essaynum = essaynum;
		this.id = id;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
		this.booknum = booknum;
		this.hits = hits;
	}

	public int getEssaynum() {
		return essaynum;
	}

	public void setEssaynum(int essaynum) {
		this.essaynum = essaynum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public int getBooknum() {
		return booknum;
	}

	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	@Override
	public String toString() {
		return "Essay [essaynum=" + essaynum + ", id=" + id + ", title=" + title + ", content=" + content
				+ ", inputdate=" + inputdate + ", booknum=" + booknum + ", hits=" + hits + "]";
	}
	
}
