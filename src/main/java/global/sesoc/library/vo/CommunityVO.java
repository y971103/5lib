package global.sesoc.library.vo;

public class CommunityVO {
	// id : 회원가입된 아이디
	private String id;
	// nickname : 가입된 회원의 별칭
	private String nickname;
	// groupNum : 그룹 번호
	private int groupnum;
	// group_master : 그룹 마스터
	// 일반 회원은 0
	// 그룹 마스터는 1
	private int group_master;
	// groupName : 그룹 이름
	private String groupname;
	// groupIntroduce : 그룹 소개
	private String groupintroduce;

	public CommunityVO() {

	}

	public CommunityVO(String id, String nickname, int groupnum, int group_master, String groupname,
			String groupintroduce) {
		this.id = id;
		this.nickname = nickname;
		this.groupnum = groupnum;
		this.group_master = group_master;
		this.groupname = groupname;
		this.groupintroduce = groupintroduce;
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

	public int getGroupnum() {
		return groupnum;
	}

	public void setGroupnum(int groupnum) {
		this.groupnum = groupnum;
	}

	public int getGroup_master() {
		return group_master;
	}

	public void setGroup_master(int group_master) {
		this.group_master = group_master;
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

	@Override
	public String toString() {
		return "CommunityVO [id=" + id + ", nickname=" + nickname + ", groupnum=" + groupnum + ", group_master="
				+ group_master + ", groupname=" + groupname + ", groupintroduce=" + groupintroduce + "]";
	}

}
