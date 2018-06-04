package kr.co.partyplanner.event.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.event.domain.ScheduleOption;


@Repository
public class ScheduleOptionDAOImpl implements ScheduleOptionDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.scheduleOptionMapper";

	@Override
	public List<ScheduleOption> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public List<ScheduleOption> optionList(String event, String eventSchedule) throws Exception {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("event", event);
		map.put("schedule", eventSchedule);
		return session.selectList(namespace+".optionList", map);
	}



}
