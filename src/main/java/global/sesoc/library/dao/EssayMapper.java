package global.sesoc.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.library.vo.Essay;
import global.sesoc.library.vo.essay_Search;

public interface EssayMapper {

	public int insertEssay(Essay essay);

	public Essay getEssay(int essaynum);

	public void addHits(int essaynum);

	public ArrayList<Essay> listEssay(essay_Search essay_search, RowBounds rb);

	public int getTotal(essay_Search essay_search);

	public int updateEssay(Essay essay);

	public int deleteEssay(Essay essay);



}
