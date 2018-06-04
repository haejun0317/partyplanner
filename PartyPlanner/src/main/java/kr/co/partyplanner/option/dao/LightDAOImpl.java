package kr.co.partyplanner.option.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.option.domain.Light;

@Repository
public class LightDAOImpl implements LightDAO {
	
	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.LightMapper";
	
	@Override
	public List<Light> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

}
