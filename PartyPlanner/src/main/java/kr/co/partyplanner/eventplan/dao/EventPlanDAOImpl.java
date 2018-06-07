package kr.co.partyplanner.eventplan.dao;


import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.eventplan.domain.EventPlan;


@Repository
public class EventPlanDAOImpl implements EventPlanDAO {

	@Inject
	private SqlSession session;

	private static final String namespace = "kr.co.partyplanner.mapper.eventPlanMapper";

	@Override
	public List<EventPlan> listplan(String id) throws Exception {
		return session.selectList(namespace+".listplan", id);
	}

	@Override
	public EventPlan read(int num) throws Exception {
		return session.selectOne(namespace+".read" ,num);
	}

	@Override
	public void create(EventPlan eventPlan) throws Exception {
		session.insert(namespace+".create", eventPlan);
	}



}
