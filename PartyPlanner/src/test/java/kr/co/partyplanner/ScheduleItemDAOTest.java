package kr.co.partyplanner;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.event.dao.ScheduleItemDAO;
import kr.co.partyplanner.event.domain.ScheduleItem;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ScheduleItemDAOTest {
	
	Logger logger = Logger.getLogger(ScheduleItemDAOTest.class);

	
	@Inject
	private ScheduleItemDAO dao;
	

	/** 행사 식순 옵션 리스트 테스트 */
	@Test
	public void testListAll() throws Exception {
		List<ScheduleItem> list = dao.listAll();
		for (ScheduleItem scheduleItem : list) {
			logger.info(scheduleItem);
		}
	}

}
