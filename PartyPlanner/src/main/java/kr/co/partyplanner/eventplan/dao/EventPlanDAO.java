package kr.co.partyplanner.eventplan.dao;


import java.util.List;

import kr.co.partyplanner.eventplan.domain.EventPlan;


public interface EventPlanDAO {

	/**기획서 아이디로 불러오기 */
	public List<EventPlan> listplan(String id)throws Exception;
	
	/**이벤트 번호 불러오기*/
	public EventPlan read(int num)throws Exception;
	
	/** 기획서 저장하기 */
	public void create(EventPlan eventPlan) throws Exception;

}
