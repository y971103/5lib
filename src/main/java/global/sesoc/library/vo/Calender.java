package global.sesoc.library.vo;

public class Calender {
	private String id;
	private String inputdate;
	private String title;
	
	public Calender() {
		
	}

	public Calender(String id, String inputdate, String title) {
		super();
		this.id = id;
		this.inputdate = inputdate;
		this.title = title;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Calender [id=" + id + ", inputdate=" + inputdate + ", title=" + title + "]";
	}
	
	
}