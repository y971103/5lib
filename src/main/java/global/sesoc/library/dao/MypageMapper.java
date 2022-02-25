package global.sesoc.library.dao;


import java.util.ArrayList;

import global.sesoc.library.vo.Comments;

import global.sesoc.library.vo.Habit;


public interface MypageMapper {

	public int counttime(Habit habit);
	
	//내 서재에 책 코멘트 등록
	public int insertComments(Comments comments);
	//등록한 책 코멘트 삭제
	public int deleteComments(Comments comments);
	//등록한 책 코멘트 수정
	public int updateComments(Comments comments);
	//내 서재 책 코멘트 목록
	public ArrayList<Comments> listComments(int booknum);
	
	
}
