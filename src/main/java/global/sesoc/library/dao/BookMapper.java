package global.sesoc.library.dao;

import java.util.ArrayList;
import java.util.List;

import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;

public interface BookMapper {

	
//한줄평 작성 
public int insertReview(Review review);
//한줄평 삭제 
public int deleteReview(Review review);
//한줄평 수정 
public int updateReview(Review review);
//한줄평 목록 출력
public ArrayList<Review> listReview(String isbn);


// 카카오 책 정보 관련
public ArrayList<Kakaobook> selectKakaobook();

public List<Kakaobook> selectKakaoBooknum();

public int insertKakaobook(Kakaobook kakaobook);

public Kakaobook getKakaoBook(String isbn);


}
