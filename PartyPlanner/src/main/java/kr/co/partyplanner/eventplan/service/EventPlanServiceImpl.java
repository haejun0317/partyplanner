package kr.co.partyplanner.eventplan.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.eventplan.dao.EventPlanDAO;
import kr.co.partyplanner.eventplan.domain.EventPlan;
import kr.co.partyplanner.plangoods.dao.PlanGoodsDao;
import kr.co.partyplanner.plangoods.domain.PlanGoods;

@Service
public class EventPlanServiceImpl implements EventPlanService {

	@Inject
	EventPlanDAO dao;

	@Inject
	PlanGoodsDao goodsDao;
	
	@Override
	public List<EventPlan> listPlan(String id) throws Exception {
		return dao.listplan(id);
	}
	
	@Override
	public EventPlan read(int num) throws Exception {
		return dao.read(num);
	}

	@Override
	public void create(EventPlan eventPlan) throws Exception {
		dao.create(eventPlan);
	}



}
