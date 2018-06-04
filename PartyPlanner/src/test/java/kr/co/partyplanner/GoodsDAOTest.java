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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class GoodsDAOTest {
	
	Logger logger = Logger.getLogger(GoodsDAOTest.class);
	
	@Inject
	private GoodsDAO dao;
	
	/** name 해당 이벤트 정보 테스트 */
	@Test
	public void testRead() throws Exception{
		
		List<Goods> list = dao.read("BGM");
		for (Goods good : list) {
			logger.info(good);
		}
	}
	

}
