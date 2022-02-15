package global.sesoc.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.library.vo.Board;
import global.sesoc.library.vo.Reply;

public interface BoardMapper {

	public int insertBoard(Board board);

	public ArrayList<Board> listBoard(String searchText, RowBounds rb);

	public Board getBoard(int boardnum);

	public void addHits(int boardnum);

	public int getTotal(String searchText);

	public ArrayList<Reply> listReply(int boardnum);

	public int deleteBoard(Board board);

	public int updateBoard(Board board);

	public int insertReply(Reply reply);

	public int deleteReply(Reply reply);

	public int updateReply(Reply reply);
	
	
}
