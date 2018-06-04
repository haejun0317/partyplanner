package kr.co.partyplanner;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.event.dao.EventDAO;
import kr.co.partyplanner.event.dao.EventScheduleDAO;
import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.event.domain.EventSchedule;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class EventDAOTest {
	
	Logger logger = Logger.getLogger(EventDAOTest.class);
	
	@Inject
	private EventDAO dao;

	
	
	/** 이벤트 리스트 테스트 */
//	@Test
	public void testListAll() throws Exception {
		List<Event> list = dao.listAll();
		for (Event event : list) {
			logger.info(event);
		}
	}
	
	/** num 해당 이벤트 정보 테스트 */
	@Test
	public void testRead() throws Exception{
		Event event = dao.read("결혼식");
		logger.info(event);
	}
	

}
