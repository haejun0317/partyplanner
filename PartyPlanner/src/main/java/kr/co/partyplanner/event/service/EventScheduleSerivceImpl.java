package kr.co.partyplanner.event.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.event.dao.EventScheduleDAO;
import kr.co.partyplanner.event.domain.EventSchedule;

@Service
public class EventScheduleSerivceImpl implements EventScheduleService {
	@Inject
	private EventScheduleDAO dao;

	@Override
	public List<EventSchedule> searchList(String name) throws Exception {
		return dao.searchList(name);
	}

	@Override
	public List<EventSchedule> eventCallList(String name) throws Exception {
		return dao.eventCallList(name);
	}

	@Override
	public List<EventSchedule> eventSearchList(String event, String item) throws Exception {
		return dao.eventSearchList(event, item);
	}

}
