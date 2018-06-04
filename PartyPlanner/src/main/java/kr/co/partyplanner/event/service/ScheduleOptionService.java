package kr.co.partyplanner.event.service;

import java.util.List;

import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.event.domain.ScheduleOption;

public interface ScheduleOptionService {
	/** 행사 식순 옵션 가져오기 */
	public List<ScheduleOption> listAll() throws Exception;
	
	/** 행사별, 식순별 옵션 가져오기 */
	public List<ScheduleOption> optionList(String event, String eventSchedule) throws Exception;
}
