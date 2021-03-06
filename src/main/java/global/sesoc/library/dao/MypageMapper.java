package global.sesoc.library.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.library.vo.Calender;
import global.sesoc.library.vo.Comments;
import global.sesoc.library.vo.DChart;
import global.sesoc.library.vo.Essay;
import global.sesoc.library.vo.Habit;
import global.sesoc.library.vo.Shelf;


public interface MypageMapper {

	public int countTime(Habit habit);
	//내 서재에 책 코멘트 등록

	
	//등록한 책 코멘트 삭제
	public int deleteComments(Comments comments);
	//등록한 책 코멘트 수정
	public int updateComments(Comments comments);
	//내 서재 책 코멘트 목록
	
	public ArrayList<Shelf> listshelf(RowBounds rb, String id);
	
	public ArrayList<Comments> listComments(int booknum);

	public ArrayList<Habit> selectTime(String id);

	public int getTotal();

	public int commentWrite(Comments comments);

	public ArrayList<Calender> selectCalender(String id);

	public ArrayList<Habit> selectChart(String id);
	
	public ArrayList<DChart> selectDChart(String id);


	public ArrayList<Comments> listComments(String id);

	//habit 테이블의 조회수 증가
	//public void addHabitHits(String isbn);

	
	
}
