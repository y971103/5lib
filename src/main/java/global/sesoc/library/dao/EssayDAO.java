package global.sesoc.library.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Essay;

@Repository
public class EssayDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertEssay(Essay essay) {
		EssayMapper mapper = sqlSession.getMapper(EssayMapper.class);
		int result = mapper.insertEssay(essay);
		return result;
	}

	public Essay getEssay(int essaynum) {
		EssayMapper mapper = sqlSession.getMapper(EssayMapper.class);
		//해당 번호의 글정보 읽기
		Essay essay = mapper.getEssay(essaynum);
		//조회수 1증가
		mapper.addHits(essaynum);
		return essay;
	}

	public int deleteEssay(Essay essay) {
		EssayMapper mapper = sqlSession.getMapper(EssayMapper.class);
		int result = mapper.deleteEssay(essay);
		return result;
	}

	public int updateEssay(Essay essay) {
		EssayMapper mapper = sqlSession.getMapper(EssayMapper.class);
		int result = mapper.updateEssay(essay);
		return result;
	}

	public int getTotal(String searchText) {
		EssayMapper mapper = sqlSession.getMapper(EssayMapper.class);
		int total = mapper.getTotal(searchText);
		return total;
	}

	public ArrayList<Essay> listEssay(String searchText, int startRecord, int countPerPage) {
		EssayMapper mapper = sqlSession.getMapper(EssayMapper.class);
		//전체 검색 결과 중 읽을 시작위치와 개수. 나머지는 다음 페이지로 넘긴다 mybatis에 있는 기능이다.
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		//검색어와 읽을 범위를 전달
		ArrayList<Essay> essaylist = mapper.listEssay(searchText, rb);
		return essaylist;
	}


}
