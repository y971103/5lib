package global.sesoc.library.vo;
 
 
public class QnA {
	private int QnAnum;
	private String id;
	private String QnAtitle;
	private String QnAcontent;
	private String inputdate;
	private int hits;
	
	
	public QnA(int qnAnum, String id, String qnAtitle, String qnAcontent, String inputdate, int hits) {
		super();
		QnAnum = qnAnum;
		this.id = id;
		QnAtitle = qnAtitle;
		QnAcontent = qnAcontent;
		this.inputdate = inputdate;
		this.hits = hits;
	}


	public int getQnAnum() {
		return QnAnum;
	}


	public void setQnAnum(int qnAnum) {
		QnAnum = qnAnum;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getQnAtitle() {
		return QnAtitle;
	}


	public void setQnAtitle(String qnAtitle) {
		QnAtitle = qnAtitle;
	}


	public String getQnAcontent() {
		return QnAcontent;
	}


	public void setQnAcontent(String qnAcontent) {
		QnAcontent = qnAcontent;
	}


	public String getInputdate() {
		return inputdate;
	}


	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}


	public int getHits() {
		return hits;
	}


	public void setHits(int hits) {
		this.hits = hits;
	}


	@Override
	public String toString() {
		return "QnA [QnAnum=" + QnAnum + ", id=" + id + ", QnAtitle=" + QnAtitle + ", QnAcontent=" + QnAcontent
				+ ", inputdate=" + inputdate + ", hits=" + hits + "]";
	}
	
}
