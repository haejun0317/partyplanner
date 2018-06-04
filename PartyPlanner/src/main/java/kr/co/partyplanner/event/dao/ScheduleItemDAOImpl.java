package kr.co.partyplanner.event.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.event.domain.ScheduleItem;

@Repository
public class ScheduleItemDAOImpl implements ScheduleItemDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.ScheduleItemeMapper";

	@Override
	public List<ScheduleItem> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}
	

}
