package kr.co.partyplanner.event.dao;

import java.util.List;

import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.event.domain.EventSchedule;

public interface EventDAO {

	/** 행사 전체 목록 출력 */
	public List<Event> listAll() throws Exception;
	
	/** num에 해당하는 행사 정보 불러오기 */
	public Event read(String name) throws Exception;
	
}
