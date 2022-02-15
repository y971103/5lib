package global.sesoc.library.dao;

import global.sesoc.library.vo.Members;

public interface MemberMapper {
	
	public int insertMember(Members member);

	public Members selectMember(String id);
	
	
}
