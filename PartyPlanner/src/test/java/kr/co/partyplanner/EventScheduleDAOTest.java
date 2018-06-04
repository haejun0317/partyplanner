package kr.co.partyplanner;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.event.dao.EventScheduleDAO;
import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.event.domain.EventSchedule;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class EventScheduleDAOTest {
	
	Logger logger = Logger.getLogger(EventScheduleDAOTest.class);

	
	@Inject
	private EventScheduleDAO dao;
	

	/** 행사 식순 리스트 테스트 */
//	@Test
	public void testListAll() throws Exception {
		List<EventSchedule> list = dao.listAll();
		for (EventSchedule eventSchedule : list) {
			logger.info(eventSchedule);
		}
	}
	
	/** 원하는 식순 리스트 테스트 */
//	@Test
	public void testSearchList() throws Exception {
		List<EventSchedule> list = dao.searchList("결혼식");
		for (EventSchedule eventSchedule : list) {
			logger.info(eventSchedule);
		}
	}
	
	/** 기본 식순 리스트 테스트 */
//	@Test
	public void testEventCallList() throws Exception {
		List<EventSchedule> list = dao.eventCallList("결혼식");
		for (EventSchedule eventSchedule : list) {
			logger.info(eventSchedule);
		}
	}
	
	/** 기본 식순 검색한 리스트 테스트 */
	@Test
	public void testEventSearchListList() throws Exception {
		List<EventSchedule> list = dao.eventSearchList("돌잔치", "이");
		for (EventSchedule eventSchedule : list) {
			logger.info(eventSchedule);
		}
	}
}
