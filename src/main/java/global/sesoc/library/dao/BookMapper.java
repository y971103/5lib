package global.sesoc.library.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;
import global.sesoc.library.vo.Shelf;
import global.sesoc.library.vo.book_Search;

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
public ArrayList<Kakaobook> selectKakaobook(book_Search book_search, RowBounds rb);

public int insertKakaobook(Kakaobook kakaobook);

public Kakaobook getKakaoBook(String isbn);

public int getTotal(book_Search book_search);
//위시리스트 저장
public int addwishlist(HashMap<String, String> map);
//위시리스트 삭제
public int deleteShelf(HashMap<String, String> map);

public List<Kakaobook> recommendKakaobook();

public int addHits(String isbn);

public ArrayList<Kakaobook> selectBestSeller();
// 카테고리별 분류 버튼 생성, 조회
public ArrayList<Kakaobook> getCategory(String genre);

}
