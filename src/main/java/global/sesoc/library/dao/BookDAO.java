package global.sesoc.library.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Book;
import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;

@Repository
public class BookDAO {
	@Autowired
	SqlSession sqlSession;

	// 한줄평 작성
	public int insertReview(Review review) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int result = mapper.insertReview(review);
		return result;
	}

	// 한줄평 삭제
	public int deleteReview(Review review) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int result = mapper.deleteReview(review);
		return result;

	}

	// 한줄평 수정
	public int updateReview(Review review) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int result = mapper.updateReview(review);
		return result;
	}

	// 북 정보에 달린 한줄평 목록
	public ArrayList<Review> listReview(int booknum) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		ArrayList<Review> reviewlist = mapper.listReview(booknum);
		return reviewlist;
	}

	public int insertKakaobook(Kakaobook kakaobook) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int result = 0;

		result = mapper.insertKakaobook(kakaobook);
		return result;
	}

	public List<Kakaobook> select() {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		List<Kakaobook> book = mapper.selectKakaobook();
		return book;
	}

	
	public List<Book> select2() {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		List<Book> book = mapper.selectBook();
		return book;
	}
	
	 public List<Book> selectBooknum() { 
		BookMapper mapper = sqlSession.getMapper(BookMapper.class); 
	 	List<Book> booknum = mapper.selectBooknum(); 
		return booknum; 
	 }

	public List<Kakaobook> selectKakaoBooknum() {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class); 
		List<Kakaobook> kakaobooknum = mapper.selectKakaoBooknum(); 
		return kakaobooknum; 
	}	 

}
