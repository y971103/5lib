package global.sesoc.library.vo;


public class Genre_info {
	private int genre_num;
	private int genre_name;
	
	public Genre_info(int genre_num, int genre_name) {
		super();
		this.genre_num = genre_num;
		this.genre_name = genre_name;
	}

	public int getGenre_num() {
		return genre_num;
	}

	public void setGenre_num(int genre_num) {
		this.genre_num = genre_num;
	}

	public int getGenre_name() {
		return genre_name;
	}

	public void setGenre_name(int genre_name) {
		this.genre_name = genre_name;
	}

	@Override
	public String toString() {
		return "Genre_info [genre_num=" + genre_num + ", genre_name=" + genre_name + "]";
	}
	
}
