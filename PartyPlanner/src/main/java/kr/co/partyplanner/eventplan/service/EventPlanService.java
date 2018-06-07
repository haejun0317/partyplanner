package kr.co.partyplanner.eventplan.service;


import java.util.List;

import kr.co.partyplanner.eventplan.domain.EventPlan;
import kr.co.partyplanner.plangoods.domain.PlanGoods;

public interface EventPlanService {
	
	/**기획서 아이디로 불러오기 서비스 */
	public List<EventPlan> listPlan(String id)throws Exception;
	
	/**이벤트 번호 불러오기 서비스 */
	public EventPlan read(int num)throws Exception;
	
	/** 기획서 저장하기 서비스 */
	public void create(EventPlan eventPlan) throws Exception;
	
	
}
