package kr.co.partyplanner.event.dao;

import java.util.List;

import kr.co.partyplanner.event.domain.ScheduleOption;


public interface ScheduleOptionDAO {
	
	/** 행사 식순 옵션 가져오기 */
	public List<ScheduleOption> listAll() throws Exception;
	
	/** 행사별, 식순별 옵션 가져오기 */
	public List<ScheduleOption> optionList(String event, String eventSchedule) throws Exception;
}
