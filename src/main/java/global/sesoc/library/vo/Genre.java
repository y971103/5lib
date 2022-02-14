package global.sesoc.library.vo;


public class Genre {
	private String id;	
	private int genre_num;
	
	
	public Genre(String id, int genre_num) {
		super();
		this.id = id;
		this.genre_num = genre_num;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getGenre_num() {
		return genre_num;
	}


	public void setGenre_num(int genre_num) {
		this.genre_num = genre_num;
	}


	@Override
	public String toString() {
		return "Genre [id=" + id + ", genre_num=" + genre_num + "]";
	}

	

}
