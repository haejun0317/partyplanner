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
import kr.co.partyplanner.event.dao.GoodsDAO;
import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.event.domain.EventSchedule;
import kr.co.partyplanner.event.domain.Goods;
import kr.co.partyplanner.plangoods.dao.PlanGoodsDao;
import kr.co.partyplanner.plangoods.domain.PlanGoods;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class PlanGoodsDAOTest {
	
	Logger logger = Logger.getLogger(PlanGoodsDAOTest.class);
	
	@Inject
	private PlanGoodsDao dao;
	
	/** name 해당 이벤트 정보 테스트 */
	@Test
	public void testRead() throws Exception{
		
		PlanGoods plangoods = dao.read("물풍선");
		logger.info(plangoods);
	}

}