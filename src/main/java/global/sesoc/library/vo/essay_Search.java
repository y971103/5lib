package global.sesoc.library.vo;

public class essay_Search {
	private String type = "1";
	private String searchText = "";
	
	public essay_Search() {
		
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	@Override
	public String toString() {
		return "notice_Search [type=" + type + ", searchText=" + searchText + "]";
	}
	
	 

}
