package global.sesoc.library.vo;

public class Kakaobook {
	String authors;
	String contents;
	String datetime;
	String isbn;
	String publisher;
	String thumbnail;
	String title;
	int booknum;
	String genre;


	public Kakaobook() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getAuthors() {
		return authors;
	}


	public void setAuthors(String authors) {
		this.authors = authors;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public String getDatetime() {
		return datetime;
	}


	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}


	public String getIsbn() {
		return isbn;
	}


	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}


	public String getPublisher() {
		return publisher;
	}


	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}


	public String getThumbnail() {
		return thumbnail;
	}


	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public int getBooknum() {
		return booknum;
	}


	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}
	
	

	public String getGenre() {
		return genre;
	}


	public void setGenre(String genre) {
		this.genre = genre;
	}


	@Override
	public String toString() {
		return "Kakaobook [authors=" + authors + ", contents=" + contents + ", datetime=" + datetime + ", isbn=" + isbn
				+ ", publisher=" + publisher + ", thumbnail=" + thumbnail + ", title=" + title + ", booknum=" + booknum
				+ ", genre=" + genre + "]";
	}
	
}
