package kr.co.partyplanner;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.reply.dao.ReplyDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ReplyDAOTest {
	
	Logger logger = Logger.getLogger(ReplyDAOTest.class);
	
	@Inject
	private ReplyDAO dao;

	
	
	/** 이벤트 리스트 테스트 */
	@Test
	public void testListAll() throws Exception {
		logger.info(dao.listAll());
	}

}
