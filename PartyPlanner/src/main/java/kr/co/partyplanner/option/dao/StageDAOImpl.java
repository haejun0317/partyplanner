package kr.co.partyplanner.option.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.option.domain.Stage;

@Repository
public class StageDAOImpl implements StageDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.StageMapper";
	
	@Override
	public List<Stage> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

}
