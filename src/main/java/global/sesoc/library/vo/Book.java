package global.sesoc.library.vo;


public class Book {
	
	private int booknum;
	private String title;
	private String author;
	private String publisher;
	private String pdate;
	private float score;
	private String introduce;
	private int book_photo;
	private String genre_num;
	
	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getBooknum() {
		return booknum;
	}


	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public String getPublisher() {
		return publisher;
	}


	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}


	public String getPdate() {
		return pdate;
	}


	public void setPdate(String pdate) {
		this.pdate = pdate;
	}


	public float getScore() {
		return score;
	}


	public void setScore(float score) {
		this.score = score;
	}


	public String getIntroduce() {
		return introduce;
	}


	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}


	public int getBook_photo() {
		return book_photo;
	}


	public void setBook_photo(int book_photo) {
		this.book_photo = book_photo;
	}


	public String getGenre_num() {
		return genre_num;
	}


	public void setGenre_num(String genre_num) {
		this.genre_num = genre_num;
	}


	@Override
	public String toString() {
		return "Book [booknum=" + booknum + ", title=" + title + ", author=" + author + ", publisher=" + publisher
				+ ", pdate=" + pdate + ", score=" + score + ", introduce=" + introduce + ", book_photo=" + book_photo
				+ ", genre_num=" + genre_num + "]";
	}
	
}
