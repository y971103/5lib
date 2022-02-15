package global.sesoc.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.library.vo.QnA;
import global.sesoc.library.vo.Board_reply;

public interface BoardMapper {

	public int insertQnA(QnA qna);

	public QnA getQnA(int qnAnum);

	public void addHits(int qnAnum);

	public int getTotal(String searchText);

	public ArrayList<QnA> listQnA(String searchText, RowBounds rb);

	public int deleteQnA(QnA qna);

	public int updateQnA(QnA qna);

	public int insertQnAReply(Board_reply qnareply);

	public ArrayList<Board_reply> listQnAReply(int qnAnum);

	public int deleteQnAReply(Board_reply qnareply);

	public int updateQnAReply(Board_reply qnareply);
	
	
}
