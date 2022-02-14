package global.sesoc.library.vo;

 
public class Info {
	int infonum;
	String id;
	String title;
	String content;
	String inputdate;
	
	
	public Info(int infonum, String id, String title, String content, String inputdate) {
		super();
		this.infonum = infonum;
		this.id = id;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
	}


	public int getInfonum() {
		return infonum;
	}


	public void setInfonum(int infonum) {
		this.infonum = infonum;
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


	@Override
	public String toString() {
		return "Info [infonum=" + infonum + ", id=" + id + ", title=" + title + ", content=" + content + ", inputdate="
				+ inputdate + "]";
	}
	
}
