package global.sesoc.library.vo;

 
public class Shelf {
	
	private String id;
	private String isbn;
	private String authors;
	private String title;
	private String thumbnail;
	private String inputdate;
	
	
	public Shelf(String id, String isbn, String authors, String title, String thumbnail, String inputdate) {
		super();
		
		this.id = id;
		this.isbn = isbn;
		this.isbn = authors;
		this.isbn = title;
		this.isbn = thumbnail;
		this.inputdate = inputdate;
	}
	
	public Shelf() {
		
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the isbn
	 */
	public String getIsbn() {
		return isbn;
	}

	/**
	 * @param isbn the isbn to set
	 */
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	/**
	 * @return the authors
	 */
	public String getAuthors() {
		return authors;
	}

	/**
	 * @param authors the authors to set
	 */
	public void setAuthors(String authors) {
		this.authors = authors;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the thumbnail
	 */
	public String getThumbnail() {
		return thumbnail;
	}

	/**
	 * @param thumbnail the thumbnail to set
	 */
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	/**
	 * @return the inputdate
	 */
	public String getInputdate() {
		return inputdate;
	}

	/**
	 * @param inputdate the inputdate to set
	 */
	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	@Override
	public String toString() {
		return "Shelf [id=" + id + ", isbn=" + isbn + ", authors=" + authors + ", title=" + title + ", thumbnail="
				+ thumbnail + ", inputdate=" + inputdate + "]";
	}


	
	
}
