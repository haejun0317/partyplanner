package kr.co.partyplanner.event.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.event.dao.ScheduleOptionDAO;
import kr.co.partyplanner.event.domain.ScheduleOption;

@Service
public class ScheduleOptionServiceImpl implements ScheduleOptionService {

	@Inject
	private ScheduleOptionDAO dao;

	@Override
	public List<ScheduleOption> optionList(String event, String eventSchedule) throws Exception {
		
		return dao.optionList(event, eventSchedule);
	}

	@Override
	public List<ScheduleOption> listAll() throws Exception {
		return dao.listAll();
	}

}
