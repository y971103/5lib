package global.sesoc.library.dao;


import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Board;
import global.sesoc.library.vo.Essay;
import global.sesoc.library.vo.Reply;
import global.sesoc.library.vo.essay_Search;
import global.sesoc.library.vo.notice_Search;


@Repository
public class BoardDAO {
	@Autowired
	SqlSession sqlSession;
	

	//글 저장
	public int insertBoard(Board board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.insertBoard(board);
		mapper.writenotice(board);
		return result;
	}
	
	/**
	 * 글 번호로 해당 게시글 읽기
	 * @param boardnum 검색할 글번호
	 * @return 검색된 게시글 정보. 없으면 null.
	 */
	public Board getBoard(int boardnum) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		//해당 번호의 글정보 읽기
		Board board = mapper.getBoard(boardnum);
		//조회수 1증가
		mapper.addHits(boardnum);
		return board;
	}
	
	
	//글 목록
	public ArrayList<Board> listBoard(notice_Search notice_search, int startRecord, int countPerPage) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		//전체 검색 결과 중 읽을 시작위치와 개수. 나머지는 다음 페이지로 넘긴다 mybatis에 있는 기능이다.
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		//검색어와 읽을 범위를 전달
		ArrayList<Board> boardlist = mapper.listBoard(notice_search, rb);
		return boardlist;
	}

	
	//전체 글 개수
	public int getTotal(notice_Search notice_search) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int total = mapper.getTotal(notice_search);
		return total;
	}

	//해당 글에 달린 리플목록 읽기
	public ArrayList<Reply> listReply(int boardnum) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		ArrayList<Reply> replylist = mapper.listReply(boardnum);
		return replylist;
	}

	//글 삭제
	public int deleteBoard(Board board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.deleteBoard(board);
		return result;
	}

	//글 수정 처리
	public int updateBoard(Board board) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.updateBoard(board);
		return result;
		
	}

	//리플 정보를 DB에 저장
	public int insertReply(Reply reply) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.insertReply(reply);
		return result;
		
	}

	//삭제할 리플 번호와 본인 글인지 확인할 로그인아이디
	public int deleteReply(Reply reply) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.deleteReply(reply);
		return result;
	}

	//리플  수정 처리
	public int updateReply(Reply reply) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.updateReply(reply);
		return result;
	}



	


}
