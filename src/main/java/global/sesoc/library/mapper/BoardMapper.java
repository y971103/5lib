package global.sesoc.library.mapper;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.library.vo.QnA;
import global.sesoc.library.vo.QnA_reply;

public interface BoardMapper {

	public int insertqna(QnA qna);

	public QnA getQnA(int qnAnum);

	public void addHits(int qnAnum);

	public int getTotal(String searchText);

	public ArrayList<QnA> listqna(String searchText, RowBounds rb);

	public int deleteqna(QnA qna);

	public int updateQnA(QnA qna);

	public int insertReply(QnA_reply qnareply);

	public ArrayList<QnA_reply> listReply(int qnAnum);

	public int deleteReply(QnA_reply qnareply);

	public int updateReply(QnA_reply qnareply);
	
	
}
