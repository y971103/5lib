package global.sesoc.library.vo;
  

public class QnA_reply {
	private String id;
	private String content;
	private int QnAreplynum;	//기본키		
	private int QnAnum;
	
	
	public QnA_reply(String id, String content, int qnAreplynum, int qnAnum) {
		super();
		this.id = id;
		this.content = content;
		QnAreplynum = qnAreplynum;
		QnAnum = qnAnum;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getQnAreplynum() {
		return QnAreplynum;
	}


	public void setQnAreplynum(int qnAreplynum) {
		QnAreplynum = qnAreplynum;
	}


	public int getQnAnum() {
		return QnAnum;
	}


	public void setQnAnum(int qnAnum) {
		QnAnum = qnAnum;
	}


	@Override
	public String toString() {
		return "QnA_reply [id=" + id + ", content=" + content + ", QnAreplynum=" + QnAreplynum + ", QnAnum=" + QnAnum
				+ "]";
	}
	
}
