package kr.co.partyplanner.event.dao;

import java.util.List;

import kr.co.partyplanner.event.domain.EventSchedule;

public interface EventScheduleDAO {
	
	/** 행사 식순 가져오기 */
	public List<EventSchedule> listAll() throws Exception;
	
	/** 원하는 행사 식순 가져오기 */
	public List<EventSchedule> searchList(String name) throws Exception;
	
	/** 원하는 행사에 따른 식순 검색해서 가져오기 서비스 */
	public List<EventSchedule> eventSearchList(String event, String item) throws Exception;
	
	/** 디폴트 행사 식순 가져오기 */
	public List<EventSchedule> eventCallList(String name) throws Exception;
}
