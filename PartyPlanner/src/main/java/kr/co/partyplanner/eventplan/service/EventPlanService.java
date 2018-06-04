package kr.co.partyplanner.eventplan.service;


import java.util.List;

import kr.co.partyplanner.eventplan.domain.EventPlan;

public interface EventPlanService {
	
	public EventPlan read(int num)throws Exception;
	
	public List<EventPlan> listPlan(String id)throws Exception;
}
