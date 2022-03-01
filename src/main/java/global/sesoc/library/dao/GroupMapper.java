package global.sesoc.library.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.library.vo.CommunityVO;
import global.sesoc.library.vo.GroupBoardVO;
import global.sesoc.library.vo.GroupReplyVO;

public interface GroupMapper {

	// 그룹 리스트
	public ArrayList<CommunityVO> groupList(RowBounds rb);


	// 그룹 게시판
	public ArrayList<GroupBoardVO> groupBoard(int groupnum);

	// 그룹 게시판 글 읽기
	public GroupBoardVO groupBoardRead(int bnum_group);

	// 그룹 생성
	public int makeGroup(CommunityVO community);

	// Gu에 정보 넣기
	public int inputGu(CommunityVO community);

	// 그룹 글 쓰기
	public int write(GroupBoardVO board);

	// 그룹 이름 가져오기
	public String groupName(int groupnum);

	// 그룹 가입
	public int joinGroup(CommunityVO community);

	// 그룹에서 아이디로 가입한 그룹번호 가져오기
	public ArrayList<CommunityVO> getMember(String id);

	// 게시글 삭제
	public int groupDelete(GroupBoardVO board);

	// 게시글 수정
	public int groupUpdate(GroupBoardVO board);


	// 그룹번호 찾기
	public int searchGn(int bnum_group);

	// 리플 쓰기
	public int replyWrite(GroupReplyVO reply);

	// 리플 목록
	public ArrayList<GroupReplyVO> groupReplyList(int bnum_group);
	
	// 리플 삭제
	public int groupReplyDelete(GroupReplyVO reply);
	

	public int getTotalList();

	public int searchBn(GroupReplyVO vo);

	public ArrayList<CommunityVO> getListuser(String id);

	public CommunityVO getMaster(int groupnum);
	

		public int checkMaster(String id);

		public CommunityVO getGroupnum(int groupnum);

		public int checkJoin(HashMap<String, Object> map);

		public CommunityVO getGroupnum_2(CommunityVO community);


		public ArrayList<CommunityVO> getMember_group(int groupnum);

}
