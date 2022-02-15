package global.sesoc.library.vo;


public class Notice {
	private int infonum;
	private String title;
	private String content;
	private String inputdate;
	private String id;
	private int hits;
	
	
	public Notice(int infonum, String title, String content, String inputdate, String id, int hits) {
		super();
		this.infonum = infonum;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
		this.id = id;
		this.hits = hits;
	}


	public int getInfonum() {
		return infonum;
	}


	public void setInfonum(int infonum) {
		this.infonum = infonum;
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
		return "Notice [infonum=" + infonum + ", title=" + title + ", content=" + content + ", inputdate=" + inputdate
				+ ", id=" + id + ", hits=" + hits + "]";
	}

}
