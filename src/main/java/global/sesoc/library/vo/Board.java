package global.sesoc.library.vo;


public class Board {
	private int boardnum;
	private int board_type;
	private String title;
	private String content;
	private String inputdate;
	private String id;
	private int hits;
	
	
	public Board(int boardnum, int type, String title, String content, String inputdate, String id, int hits) {
		super();
		this.boardnum = boardnum;
		this.board_type = board_type;
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


	public int getBoard_type() {
		return board_type;
	}


	public void setBoard_type(int board_type) {
		this.board_type = board_type;
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
		return "Board [boardnum=" + boardnum + ", type=" + board_type + ", title=" + title + ", content=" + content
				+ ", inputdate=" + inputdate + ", id=" + id + ", hits=" + hits + "]";
	}
	
	
}
