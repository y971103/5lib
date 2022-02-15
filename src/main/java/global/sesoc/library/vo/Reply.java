package global.sesoc.library.vo;
  

public class Reply {
	
	private int replynum;	//기본키		
	private String id;
	private String content;
	private int Boardnum;

	
	public Reply(int replynum, String id, String content, int boardnum) {
		super();
		this.replynum = replynum;
		this.id = id;
		this.content = content;
		Boardnum = boardnum;
	}

	public Reply() {
		
	}

	public int getReplynum() {
		return replynum;
	}

	public void setReplynum(int replynum) {
		this.replynum = replynum;
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

	public int getBoardnum() {
		return Boardnum;
	}

	public void setBoardnum(int boardnum) {
		Boardnum = boardnum;
	}

	@Override
	public String toString() {
		return "Reply [replynum=" + replynum + ", id=" + id + ", content=" + content + ", Boardnum=" + Boardnum + "]";
	}
	
	
}
