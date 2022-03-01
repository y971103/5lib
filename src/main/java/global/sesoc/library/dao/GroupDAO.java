package global.sesoc.library.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.CommunityVO;
import global.sesoc.library.vo.GroupBoardVO;
import global.sesoc.library.vo.GroupReplyVO;

/**
 * 그룹 관련 DAO
 */
@Repository
public class GroupDAO {
	@Autowired
	SqlSession sqlSession;

	public ArrayList<CommunityVO> groupList(int start, int count) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		RowBounds rb = new RowBounds(start, count);
		ArrayList<CommunityVO> list = null;
		try {
			list = mapper.groupList(rb);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	public ArrayList<GroupBoardVO> groupBoard(int groupnum) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		ArrayList<GroupBoardVO> list = null;
		try {
			list = mapper.groupBoard(groupnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int makeGroup(CommunityVO community) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		try {
			result = mapper.makeGroup(community);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int inputGu(CommunityVO community) {
		int res = 0;
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		try {
			res = mapper.inputGu(community);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	public int write(GroupBoardVO board) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		try {
			result = mapper.write(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public GroupBoardVO groupBoardRead(int bnum_group) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		GroupBoardVO result = null;
		try {
			result = mapper.groupBoardRead(bnum_group);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String groupName(int groupnum) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		String groupname = null;
		try {
			groupname = mapper.groupName(groupnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return groupname;
	}

	public int joinGroup(CommunityVO community) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		try {
			result = mapper.joinGroup(community);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<CommunityVO> getMember(String id) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		ArrayList<CommunityVO> vo = null;
		try {
			vo = mapper.getMember(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public int groupDelete(GroupBoardVO board) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		try {
			result = mapper.groupDelete(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int groupUpdate(GroupBoardVO board) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		try {
			result = mapper.groupUpdate(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}



	public int searchGn(int bnum_group) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		try {
			result = mapper.searchGn(bnum_group);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int replyWrite(GroupReplyVO reply) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		try {
			result = mapper.replyWrite(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<GroupReplyVO> groupReplyList(int bnum_group) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		ArrayList<GroupReplyVO> replylist = null;
		try {
			replylist = mapper.groupReplyList(bnum_group);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return replylist;
	}

	public int groupReplyDelete(GroupReplyVO reply) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		try {
			result = mapper.groupReplyDelete(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	

	public int getTotalList() {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		result = mapper.getTotalList();
		return result;
	}

	public int searchBn(GroupReplyVO vo) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		result = mapper.searchBn(vo);
		return result;
	}

	public ArrayList<CommunityVO> getList_user(String id) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		ArrayList<CommunityVO> result = null;
		result = mapper.getListuser(id);
		return result;
	}

	public CommunityVO getMaster(int groupnum) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		CommunityVO result = null;
		result = mapper.getMaster(groupnum);
		return result;
	}

	public int checkMaster(String id) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		result = mapper.checkMaster(id);
		return result;
	}

	public int getGroupnum(CommunityVO community) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		CommunityVO result2 = mapper. getGroupnum_2(community);
		result = result2.getGroupnum();
		return result;
	}

	public String getGroupintro(int groupnum) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		String result = null;
		CommunityVO result2 = mapper. getGroupnum(groupnum);
		result = result2.getGroupintroduce();
		
		return result;
	}

	public int checkJoin(HashMap<String, Object> map) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		int result = 0;
		result = mapper.checkJoin(map);
		return result;
	}


	public ArrayList<CommunityVO> getMember_group(int groupnum) {
		GroupMapper mapper = sqlSession.getMapper(GroupMapper.class);
		ArrayList<CommunityVO> result = null;
		result = mapper.getMember_group(groupnum);
		return result;
	}

}
