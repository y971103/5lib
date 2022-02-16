package global.sesoc.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.library.vo.Essay;

public interface EssayMapper {

	public int insertEssay(Essay essay);

	public Essay getEssay(int essaynum);

	public void addHits(int essaynum);

	public ArrayList<Essay> listEssay(String searchText, RowBounds rb);

	public int getTotal(String searchText);

	public int updateEssay(Essay essay);

	public int deleteEssay(Essay essay);

}
