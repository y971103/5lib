package global.sesoc.library.vo;

public class GroupReplyVO {

	private int groupnum;
	private int bnum_group;
	private int rnum_group;
	private String title;
	private String content;
	private String inputdate;
	private String id;
	private String nickname;

	public GroupReplyVO() {
	}

	public GroupReplyVO(int rnum_group, String id) {
		this.rnum_group = rnum_group;
		this.id = id;
	}

	public GroupReplyVO(int groupnum, int bnum_group, int rnum_group, String title, String content, String inputdate,
			String id, String nickname) {
		this.groupnum = groupnum;
		this.bnum_group = bnum_group;
		this.rnum_group = rnum_group;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
		this.id = id;
		this.nickname = nickname;
	}

	public int getGroupnum() {
		return groupnum;
	}

	public void setGroupnum(int groupnum) {
		this.groupnum = groupnum;
	}

	public int getBnum_group() {
		return bnum_group;
	}

	public void setBnum_group(int bnum_group) {
		this.bnum_group = bnum_group;
	}

	public int getRnum_group() {
		return rnum_group;
	}

	public void setRnum_group(int rnum_group) {
		this.rnum_group = rnum_group;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "GroupReplyVO [groupnum=" + groupnum + ", bnum_group=" + bnum_group + ", rnum_group=" + rnum_group
				+ ", title=" + title + ", content=" + content + ", inputdate=" + inputdate + ", id=" + id
				+ ", nickname=" + nickname + "]";
	}

}
