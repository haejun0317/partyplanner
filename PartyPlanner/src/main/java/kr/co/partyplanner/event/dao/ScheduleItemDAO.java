package kr.co.partyplanner.event.dao;

import java.util.List;


import kr.co.partyplanner.event.domain.ScheduleItem;

public interface ScheduleItemDAO {
	
	/** 행사 항목 가져오기 */
	public List<ScheduleItem> listAll() throws Exception;
	
	
}
