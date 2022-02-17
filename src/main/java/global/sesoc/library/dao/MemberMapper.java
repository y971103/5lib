package global.sesoc.library.dao;

import global.sesoc.library.vo.Members;

public interface MemberMapper {
	
	//회원가입
	public int insertMember(Members member);
	//로그인 관련
	public Members selectMember(String id);
	//회원정보 수정
	public int updateMember(Members member);
	
}
