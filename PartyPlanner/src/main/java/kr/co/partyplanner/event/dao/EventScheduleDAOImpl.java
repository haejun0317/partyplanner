package kr.co.partyplanner.event.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.event.domain.EventSchedule;

@Repository
public class EventScheduleDAOImpl implements EventScheduleDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.EventScheduleMapper";

	@Override
	public List<EventSchedule> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public List<EventSchedule> searchList(String name) throws Exception {
		return session.selectList(namespace+".searchList", name);
	}
	
	@Override
	public List<EventSchedule> eventCallList(String name) throws Exception {
		return session.selectList(namespace+".eventCallList", name);
	}

	@Override
	public List<EventSchedule> eventSearchList(String event, String item) throws Exception {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("event", event);
		map.put("item", item);
		return session.selectList(namespace+".eventSearchList", map);
	}
	

}
