package global.sesoc.library.mapper;

import global.sesoc.library.vo.Members;

public interface MemberMapper {
	//�쉶�썝 �젙蹂� ���옣
	public int insertMember(Members member);

	public Members selectMember(String id);
	
	
}
