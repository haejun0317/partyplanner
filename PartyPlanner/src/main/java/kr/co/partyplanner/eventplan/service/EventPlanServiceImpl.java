package kr.co.partyplanner.eventplan.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.eventplan.dao.EventPlanDAO;
import kr.co.partyplanner.eventplan.domain.EventPlan;

@Service
public class EventPlanServiceImpl implements EventPlanService {

	@Inject
	EventPlanDAO dao;

	@Override
	public EventPlan read(int num) throws Exception {
		return dao.read(num);
	}

	
	@Override
	public List<EventPlan> listPlan(String id) throws Exception {
		return dao.listplan(id);
	}

}
