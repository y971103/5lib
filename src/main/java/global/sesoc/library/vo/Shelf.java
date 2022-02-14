package global.sesoc.library.vo;

 
public class Shelf {
	private int shelfnum;
	private String id;
	private int booknum;
	
	
	public Shelf(int shelfnum, String id, int booknum) {
		super();
		this.shelfnum = shelfnum;
		this.id = id;
		this.booknum = booknum;
	}


	public int getShelfnum() {
		return shelfnum;
	}


	public void setShelfnum(int shelfnum) {
		this.shelfnum = shelfnum;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getBooknum() {
		return booknum;
	}


	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}


	@Override
	public String toString() {
		return "Shelf [shelfnum=" + shelfnum + ", id=" + id + ", booknum=" + booknum + "]";
	}
	
}
