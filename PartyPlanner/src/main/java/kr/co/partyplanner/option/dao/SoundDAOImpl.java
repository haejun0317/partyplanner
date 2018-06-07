package kr.co.partyplanner.option.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.option.domain.Sound;

@Repository
public class SoundDAOImpl implements SoundDAO {
	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.SoundMapper";
	
	@Override
	public List<Sound> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public Sound read(String name) throws Exception {
		return session.selectOne(namespace+".read", name);
	}

}
