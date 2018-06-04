package kr.co.partyplanner.event.service;

import java.util.List;

import kr.co.partyplanner.event.domain.Event;

public interface EventService {
	/** 행사 전체 목록 출력 서비스 */
	public List<Event> listAll() throws Exception;
	
	/** num 해당 행사 정보 출력 서비스 */
	public Event read(String name) throws Exception;
}
