package global.sesoc.library.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.dao.MemberMapper;
import global.sesoc.library.vo.Essay;
import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Members;



@Repository
public class MemberDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertMember(Members member) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		int result = 0;

		try {
			result = mapper.insertMember(member);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public Members getMember(String id) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		Members member = mapper.selectMember(id);
		return member;
	}

	public int updateMember(Members member) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		int result = mapper.updateMember(member);
		return result;
	}

}
