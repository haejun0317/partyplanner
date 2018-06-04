package kr.co.partyplanner;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.event.dao.ScheduleOptionDAO;
import kr.co.partyplanner.event.domain.ScheduleOption;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ScheduleOptionDAOTest {
	
	Logger logger = Logger.getLogger(ScheduleOptionDAOTest.class);

	
	@Inject
	private ScheduleOptionDAO dao;
	

	/** 행사 식순 옵션 리스트 테스트 */
//	@Test
	public void testListAll() throws Exception {
		List<ScheduleOption> list = dao.listAll();
		for (ScheduleOption scheduleOption : list) {
			logger.info(scheduleOption);
		}
	}
	
	/** 행사별, 식순별 옵션 리스트 테스트 */
	@Test
	public void testOptionListAll() throws Exception {
		List<ScheduleOption> list = dao.optionList("돌잔치", "입장");
		for (ScheduleOption scheduleOption : list) {
			logger.info(scheduleOption);
		}
	}

}
