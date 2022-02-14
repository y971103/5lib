package global.sesoc.library.vo;


public class Book {
	
	private int booknum;
	private String title;
	private String author;
	private String publisher;
	private String p_date;
	private float score;
	private String introduce;
	private int genre_type;
	private int book_photo;
	private int bookfile;
	private int genre_num;
	
	public Book(int booknum, String title, String author, String publisher, String p_date, float score,
			String introduce, int genre_type, int book_photo, int bookfile, int genre_num) {
		super();
		this.booknum = booknum;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.p_date = p_date;
		this.score = score;
		this.introduce = introduce;
		this.genre_type = genre_type;
		this.book_photo = book_photo;
		this.bookfile = bookfile;
		this.genre_num = genre_num;
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

	public String getP_date() {
		return p_date;
	}

	public void setP_date(String p_date) {
		this.p_date = p_date;
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

	public int getGenre_type() {
		return genre_type;
	}

	public void setGenre_type(int genre_type) {
		this.genre_type = genre_type;
	}

	public int getBook_photo() {
		return book_photo;
	}

	public void setBook_photo(int book_photo) {
		this.book_photo = book_photo;
	}

	public int getBookfile() {
		return bookfile;
	}

	public void setBookfile(int bookfile) {
		this.bookfile = bookfile;
	}

	public int getGenre_num() {
		return genre_num;
	}

	public void setGenre_num(int genre_num) {
		this.genre_num = genre_num;
	}

	@Override
	public String toString() {
		return "Book [booknum=" + booknum + ", title=" + title + ", author=" + author + ", publisher=" + publisher
				+ ", p_date=" + p_date + ", score=" + score + ", introduce=" + introduce + ", genre_type=" + genre_type
				+ ", book_photo=" + book_photo + ", bookfile=" + bookfile + ", genre_num=" + genre_num + "]";
	}
	
	
}
