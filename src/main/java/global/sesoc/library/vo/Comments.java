package global.sesoc.library.vo;


public class Comments {
	private int commentnum;
	private String content;
	private String id;
	private String isbn;
	
	public Comments(int commentnum, String content, String id, String isbn) {
		super();
		this.commentnum = commentnum;
		this.content = content;
		this.id = id;
		this.isbn = isbn;
	}
	
	
	
	public Comments() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getCommentnum() {
		return commentnum;
	}

	public void setCommentnum(int commentnum) {
		this.commentnum = commentnum;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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
		return "Comments [commentnum=" + commentnum + ", content=" + content + ", id=" + id + ", isbn=" + isbn + "]";
	}

	
	
}
