package global.sesoc.library.vo;

public class Group_userVO {

	private int groupnum;
	private String groupname;
	// groupIntroduce : 그룹 소개
	private String groupintroduce;

	public Group_userVO() {

	}

	public Group_userVO(int groupnum, String groupname, String groupintroduce) {
		super();
		this.groupnum = groupnum;
		this.groupname = groupname;
		this.groupintroduce = groupintroduce;
	}

	@Override
	public String toString() {
		return "Group_userVO [groupnum=" + groupnum + ", groupname=" + groupname + ", groupintroduce=" + groupintroduce
				+ "]";
	}

	public int getGroupnum() {
		return groupnum;
	}

	public void setGroupnum(int groupnum) {
		this.groupnum = groupnum;
	}

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public String getGroupintroduce() {
		return groupintroduce;
	}

	public void setGroupintroduce(String groupintroduce) {
		this.groupintroduce = groupintroduce;
	}


}
