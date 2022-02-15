package global.sesoc.library.vo;


public class Board {
	private int boardnum;
	private int type;
	private String title;
	private String content;
	private String inputdate;
	private String id;
	private int hits;
	
	
	public Board(int boardnum, int type, String title, String content, String inputdate, String id, int hits) {
		super();
		this.boardnum = boardnum;
		this.type = type;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
		this.id = id;
		this.hits = hits;
	}


	public Board () {
		
	}


	public int getBoardnum() {
		return boardnum;
	}


	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}


	public int getType() {
		return type;
	}


	public void setType(int type) {
		this.type = type;
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


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getHits() {
		return hits;
	}


	public void setHits(int hits) {
		this.hits = hits;
	}


	@Override
	public String toString() {
		return "Board [boardnum=" + boardnum + ", type=" + type + ", title=" + title + ", content=" + content
				+ ", inputdate=" + inputdate + ", id=" + id + ", hits=" + hits + "]";
	}
	
	
}
