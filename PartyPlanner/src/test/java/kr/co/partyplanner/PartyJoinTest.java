package kr.co.partyplanner;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.option.dao.McDAO;
import kr.co.partyplanner.option.dao.StaffDAO;
import kr.co.partyplanner.option.dao.StageDAO;
import kr.co.partyplanner.option.domain.Mc;
import kr.co.partyplanner.option.domain.Staff;
import kr.co.partyplanner.option.domain.Stage;
import kr.co.partyplanner.partyjoin.dao.PartyJoinDAO;
import kr.co.partyplanner.partyjoin.domain.PartyJoin;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class PartyJoinTest {
	
	Logger logger = Logger.getLogger(PartyJoinTest.class);

	@Inject
	private PartyJoinDAO dao;
	
//	@Test
	public void updateTest()throws Exception{
		
		PartyJoin partyJoin = new PartyJoin();
		partyJoin.setId("admin2");
		partyJoin.setNum(104);
		partyJoin.setApprove("N");
		dao.approveUpdate(partyJoin);
		
		logger.info("수정");
	
	}
	
	@Test
	public void readTest() throws Exception{
		PartyJoin partyJoin = dao.read("admin2", 84);
		logger.info(partyJoin);
	}


}
