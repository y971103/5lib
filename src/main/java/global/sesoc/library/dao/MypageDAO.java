package global.sesoc.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Comments;

@Repository
public class MypageDAO {
	
	@Autowired
	SqlSession sqlSession;

	// 내 서재에 책 코멘트 등록
	public int insertComments(Comments comments) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		int result = mapper.insertComments(comments);
		return result;
	}
	
	// 등록한 책 코멘트 삭제
	public int deleteComments(Comments comments) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		int result = mapper.deleteComments(comments);
		return result;
		
	}
	
	// 내 서재 책 코멘트 수정
	public int updateComments(Comments comments) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		int result = mapper.updateComments(comments);
		return result;
		
	}
	
	// 내 서재 코멘트한 내용 목록
	public ArrayList<Comments> listComments(int booknum) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		ArrayList<Comments> listComments = mapper.listComments(booknum);
		return listComments;
	}

}