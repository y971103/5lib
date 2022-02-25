package global.sesoc.library.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Habit;

@Repository
public class MypageDAO {
	@Autowired
	SqlSession sqlSession;

	public int counttime(Habit habit) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		int result = mapper.counttime(habit);
		return result;
	}
	

}