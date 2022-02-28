package global.sesoc.library.vo;

 
public class Shelf {
	private int shelfnum;
	private String id;
	private String isbn;
	private String inputdate;
	
	
	public Shelf(int shelfnum, String id, String isbn, String inputdate) {
		super();
		this.shelfnum = shelfnum;
		this.id = id;
		this.isbn = isbn;
		this.inputdate = inputdate;
	}
	
	public Shelf() {
		
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

	@Override
	public String toString() {
		return "Shelf [shelfnum=" + shelfnum + ", id=" + id + ", isbn=" + isbn + ", inputdate=" + inputdate + "]";
	}
	
}
