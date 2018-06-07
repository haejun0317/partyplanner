package kr.co.partyplanner.option.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.option.domain.Mc;

@Repository
public class McDAOImpl implements McDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.McMapper";
	
	@Override
	public List<Mc> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public Mc read(String name) throws Exception {
		return session.selectOne(namespace+".read", name);
	}

}
