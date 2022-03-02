package global.sesoc.library.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Board;
import global.sesoc.library.vo.Comments;
import global.sesoc.library.vo.Habit;
import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Shelf;
import global.sesoc.library.vo.book_Search;
import global.sesoc.library.vo.notice_Search;


@Repository
public class MypageDAO {
	
	@Autowired
	SqlSession sqlSession;

	
	//commentlist(게시판 보여주기) 
	public ArrayList<Shelf> listshelf(String id) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		ArrayList<Shelf> shelflist = mapper.listshelf(id);
		return shelflist;
	}
	

	
		//책 목록
		public List<Shelf> selectShelf(int startRecord, int countPerPage) {
			MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
			//전체 검색 결과 중 읽을 시작위치와 개수.
			RowBounds rb = new RowBounds(startRecord, countPerPage);
			
			//검색어와 읽을 범위를 전달
			List<Shelf> book = mapper.selectShelf(rb);
			return book;
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
	//wishlist(게시판 보여주기) 
	public ArrayList<Shelf> listWish(String id) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		ArrayList<Shelf> shelflist = mapper.listshelf(id);
		return shelflist;
	}


	//전체 글 개수
	public int getTotal() {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		int total = mapper.getTotal();
		return total;
	}



	
	
}