package kr.co.partyplanner.option.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.option.domain.Staff;

@Repository
public class StaffDAOImpl implements StaffDAO {
	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.StaffMapper";
	
	@Override
	public List<Staff> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public Staff read(String name) throws Exception {
		return session.selectOne(namespace+".read", name);
	}

}
