package global.sesoc.library.vo;


public class Habit {
	private String id;
	private int time;
	private String isbn;
	private String inputdate;
	private String month;
	private String mtime;
	
	public Habit() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Habit(String id, int time, String isbn, String inputdate, String month, String mtime) {
		super();
		this.id = id;
		this.time = time;
		this.isbn = isbn;
		this.inputdate = inputdate;
		this.month = month;
		this.mtime = mtime;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getMtime() {
		return mtime;
	}

	public void setMtime(String mtime) {
		this.mtime = mtime;
	}

	@Override
	public String toString() {
		return "Habit [id=" + id + ", time=" + time + ", isbn=" + isbn + ", inputdate=" + inputdate + ", month=" + month
				+ ", mtime=" + mtime + "]";
	}

	
	
}
