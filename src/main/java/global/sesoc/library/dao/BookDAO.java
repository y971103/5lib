package global.sesoc.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;

@Repository
public class BookDAO {
	@Autowired
	SqlSession sqlSession;
	
//	// 한줄평 작성
//	public int insertReview(Review review) {
//		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
//		int result = mapper.insertReview(review);
//		return result;
//	}
//	
//	// 한줄평 삭제
//	public int deleteReview(Review review) {
//		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
//		int result = mapper.deleteReview(review);
//		return result;
//		
//	}
//	
//	// 한줄평 수정
//	public int updateReview(Review review) {
//		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
//		int result = mapper.updateReview(review);
//		return result;
//	}
//		
//	
//	//북 정보에 달린 한줄평 목록
//	public ArrayList<Review> listReview(int booknum) {
//		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
//		ArrayList<Review> reviewlist = mapper.listReview(booknum);
//		return reviewlist;
//	}

	public ArrayList<Kakaobook> selectKakaobook() {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		ArrayList<Kakaobook> kakaobooklist = mapper.seletKakaobook();
		return kakaobooklist;
	}
}
