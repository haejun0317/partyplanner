package kr.co.partyplanner.event.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.event.domain.EventSchedule;

@Repository
public class EventDAOImpl implements EventDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.EventMapper";
	
	@Override
	public List<Event> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public Event read(String name) throws Exception {
		return session.selectOne(namespace+".read",name);
	}


}
