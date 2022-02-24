package global.sesoc.library.vo;

public class book_Search {
	private String type = "1";
	private String searchText = "";
	
	public book_Search() {
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the searchText
	 */
	public String getSearchText() {
		return searchText;
	}

	/**
	 * @param searchText the searchText to set
	 */
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	@Override
	public String toString() {
		return "book_Search [type=" + type + ", searchText=" + searchText + "]";
	}
	
	

}
