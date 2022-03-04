package global.sesoc.library.vo;

public class DChart {
	private String id;
	private String isbn;
	private String genre;
	private String hits;
	
	public DChart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DChart(String id, String isbn, String genre, String hits) {
		super();
		this.id = id;
		this.isbn = isbn;
		this.genre = genre;
		this.hits = hits;
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
	 * @return the genre
	 */
	public String getGenre() {
		return genre;
	}

	/**
	 * @param genre the genre to set
	 */
	public void setGenre(String genre) {
		this.genre = genre;
	}

	/**
	 * @return the hits
	 */
	public String getHits() {
		return hits;
	}

	/**
	 * @param hits the hits to set
	 */
	public void setHits(String hits) {
		this.hits = hits;
	}

	@Override
	public String toString() {
		return "DChart [id=" + id + ", isbn=" + isbn + ", genre=" + genre + ", hits=" + hits + "]";
	}


	
	
}
