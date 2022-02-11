package global.sesoc.library.util;


public class PageNavigator {

	private int countPerPage;		
	private int pagePerGroup;		
	private int currentPage;		
	private int totalRecordsCount;	
	private int totalPageCount;		
	private int currentGroup;		
	private int startPageGroup;		
	private int endPageGroup;		
	private int startRecord;		
	
	
	 
	public PageNavigator(int countPerPage, int pagePerGroup, int currentPage, int totalRecordsCount) {
		
		this.countPerPage = countPerPage;
		this.pagePerGroup = pagePerGroup;
		this.totalRecordsCount = totalRecordsCount;
		
		
		totalPageCount = (totalRecordsCount + countPerPage - 1) / countPerPage;

		
		if (currentPage < 1)	currentPage = 1;
		
		if (currentPage > totalPageCount)	currentPage = totalPageCount;
		
		this.currentPage = currentPage;

	
		currentGroup = (currentPage - 1) / pagePerGroup;
		
		
		startPageGroup = currentGroup * pagePerGroup + 1;
	
		startPageGroup = startPageGroup < 1 ? 1 : startPageGroup;
	
		endPageGroup = startPageGroup + pagePerGroup - 1;
	
		endPageGroup = endPageGroup < totalPageCount ? endPageGroup : totalPageCount;

		
		startRecord = (currentPage - 1) * countPerPage;			
	}

	
	public int getCountPerPage() {
		return countPerPage;
	}

	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}

	public int getPagePerGroup() {
		return pagePerGroup;
	}

	public void setPagePerGroup(int pagePerGroup) {
		this.pagePerGroup = pagePerGroup;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalRecordsCount() {
		return totalRecordsCount;
	}

	public void setTotalRecordsCount(int totalRecordsCount) {
		this.totalRecordsCount = totalRecordsCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getCurrentGroup() {
		return currentGroup;
	}

	public void setCurrentGroup(int currentGroup) {
		this.currentGroup = currentGroup;
	}

	public int getStartPageGroup() {
		return startPageGroup;
	}

	public void setStartPageGroup(int startPageGroup) {
		this.startPageGroup = startPageGroup;
	}

	public int getEndPageGroup() {
		return endPageGroup;
	}

	public void setEndPageGroup(int endPageGroup) {
		this.endPageGroup = endPageGroup;
	}

	public int getStartRecord() {
		return startRecord;
	}

	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}

	@Override
	public String toString() {
		return "PageNavigator [countPerPage=" + countPerPage + ", pagePerGroup=" + pagePerGroup + ", currentPage="
				+ currentPage + ", totalRecordsCount=" + totalRecordsCount + ", totalPageCount=" + totalPageCount
				+ ", currentGroup=" + currentGroup + ", startPageGroup=" + startPageGroup + ", endPageGroup="
				+ endPageGroup + ", startRecord=" + startRecord + "]";
	}
	
}
