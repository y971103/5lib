package global.sesoc.library.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.dao.MemberMapper;
import global.sesoc.library.vo.Book;
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

	public List<Kakaobook> selectKakaobook() {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		List<Kakaobook> book = mapper.selectKakaobook();
		return book;
	}

	public Kakaobook getKakaoBook(String isbn) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		//해당 번호의 글정보 읽기
		Kakaobook book = mapper.getKakaoBook(isbn);
		return book;
	}

	public Book getBook(int booknum) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		Book book = mapper.getBook(booknum);
		return book;
	}

	public List<Book> selectBook() {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		List<Book> book = mapper.selectBook();
		return book;
	}

}
