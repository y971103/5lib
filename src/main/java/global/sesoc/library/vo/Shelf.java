package global.sesoc.library.vo;

 
public class Shelf {
	private int shelfnum;
	private String id;
	private String isbn;
	
	
	public Shelf(int shelfnum, String id, String isbn) {
		super();
		this.shelfnum = shelfnum;
		this.id = id;
		this.isbn = isbn;
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


	@Override
	public String toString() {
		return "Shelf [shelfnum=" + shelfnum + ", id=" + id + ", isbn=" + isbn + "]";
	}
	
}
