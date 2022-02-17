package global.sesoc.library.vo;

public class Kakaobook {
	String authors;
	String contents;
	String datetime;
	String isbn;
	int price;
	String publisher;
	int sale_price;
	String status;
	String thumbnail;
	String title;
	String translators;
	
	public Kakaobook() {
		this.authors = "";
		this.contents = "";
		this.datetime = "";
		this.isbn = "";
		this.publisher = "";
		this.status = "";
		this.thumbnail = "";
		this.title = "";
		this.translators = "";		
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getSale_price() {
		return sale_price;
	}

	public void setSale_price(int sale_price) {
		this.sale_price = sale_price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	public String getTranslators() {
		return translators;
	}

	public void setTranslators(String translators) {
		this.translators = translators;
	}

	@Override
	public String toString() {
		return "Book [authors=" + authors + ", contents=" + contents + ", datetime=" + datetime + ", isbn=" + isbn
				+ ", price=" + price + ", publisher=" + publisher + ", sale_price=" + sale_price + ", status=" + status
				+ ", thumbnail=" + thumbnail + ", title=" + title + ", translators=" + translators + "]";
	}
}
