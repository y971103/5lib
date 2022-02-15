package global.sesoc.library.dao;


import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.QnA;
import global.sesoc.library.vo.Board_reply;


@Repository
public class BoardDAO {
	@Autowired
	SqlSession sqlSession;
	
	//QnA글 저장
	public int insertQnA(QnA qna) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.insertQnA(qna);
		return result;
	}
	
	//QnA번호로 QnA글 읽기
	public QnA getQnA(int QnAnum) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		//해당 번호의 글정보 읽기
		QnA qna = mapper.getQnA(QnAnum);
		//조회수 1증가
		mapper.addHits(QnAnum);
		return qna;
	}
	
	//검색 결과 레코드 수
	public int getTotal(String searchText) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int total = mapper.getTotal(searchText);
		return total;
	}
	
	//한 페이지의 게시글 목록 읽기
	public ArrayList<QnA> listQnA(String searchText, int startRecord, int countPerPage) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		//전체 검색 결과 중 읽을 시작위치와 개수
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		//검색어와 읽을 범위를 전달
		ArrayList<QnA> qnalist = mapper.listQnA(searchText, rb);
		return qnalist;
	}
	
	//QnA글 번호로 해당 게시글 삭제
	public int deleteQnA(QnA qna) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.deleteQnA(qna);
		return result;
	}
	
	//QnA글 수정
	public int updateQnA(QnA qna) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.updateQnA(qna);
		return result;
	}
	
	//리플 저장
	public int insertQnAReply(Board_reply qnareply) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.insertQnAReply(qnareply);
		return result;
	}
	
	//한 QnA글의 리플 목록 읽기
	public ArrayList<Board_reply> listQnAReply(int qnAnum) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		ArrayList<Board_reply> replylist = mapper.listQnAReply(qnAnum);
		return replylist;
	}
	
	//리플 번호로 해당 리플 삭제
	public int deleteQnAReply(Board_reply qnareply) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.deleteQnAReply(qnareply);
		return result;
	}

	public int updateQnAReply(Board_reply qnareply) {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		int result = mapper.updateQnAReply(qnareply);
		return result;
	}

}
