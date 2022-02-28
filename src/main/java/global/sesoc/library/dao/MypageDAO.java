package global.sesoc.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Board;
import global.sesoc.library.vo.Comments;
import global.sesoc.library.vo.Habit;
import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.notice_Search;


@Repository
public class MypageDAO {
	
	@Autowired
	SqlSession sqlSession;

	
	//commentlist(게시판 보여주기) 
	public ArrayList<commentlist> listcomment(booklist, shelflist) {
		mypageMapper mapper = sqlSession.getMapper(BoardMapper.class);
		ArrayList<shelf> shelflist = mapper.select(id);
		return commentlist;
	}
	

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

	public int countTime(Habit habit) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		int result = mapper.countTime(habit);

		return result;
	}

	public ArrayList<Habit> selectTime(String id) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		ArrayList<Habit> habitlist = mapper.selectTime(id);
		return habitlist;
	}

	
	
}