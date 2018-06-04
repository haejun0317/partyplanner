package kr.co.partyplanner.event.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.event.dao.EventDAO;
import kr.co.partyplanner.event.domain.Event;

@Service
public class EventServiceImpl implements EventService {

	@Inject
	private EventDAO dao;
	
	@Override
	public List<Event> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public Event read(String name) throws Exception {
		return dao.read(name);
	}

}
