package kr.co.partyplanner;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.eventplan.dao.EventPlanDAO;
import kr.co.partyplanner.eventplan.domain.EventPlan;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class EventPlanDAOTest {
	
	Logger logger = Logger.getLogger(EventPlanDAOTest.class);
	
	@Inject
	private EventPlanDAO dao;
	
	@Test
	public void testCreate() throws Exception{
		EventPlan eventPlan = new EventPlan();
		eventPlan.setEndday("2018-06-07");
		eventPlan.setStartday("2018-06-07");
		eventPlan.setId("admin");
		eventPlan.setName("돌잔치");
		eventPlan.setSchedule("입장##인사##생일축하노래##돌잡이##퇴장##");
		eventPlan.setPlace("영등포구");
		eventPlan.setPeople(0);
		eventPlan.setEventSum(0);
		eventPlan.setOptionSum(0);
		eventPlan.setMc("null");
		eventPlan.setStage("null");
		eventPlan.setStaff("null");
		eventPlan.setSound("null");
		eventPlan.setLight("null");
		dao.create(eventPlan);
	}

}
