package kr.co.partyplanner;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.party.domain.Party;
import kr.co.partyplanner.reply.dao.ReplyDAO;
import kr.co.partyplanner.reply.domain.Reply;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ReplyDAOTest {
	
	Logger logger = Logger.getLogger(ReplyDAOTest.class);
	
	@Inject
	private ReplyDAO dao;

	
	
	/** 댓글 리스트 테스트 */
	@Test
	public void testListAll() throws Exception {
	
		List<Reply> list = dao.listAll(104);
		for (Reply reply : list) {
			logger.info(reply);
		}
		
	
	}
	
	/** 댓글 등록 테스트*/
	//@Test
	public void createTest()throws Exception{
		
		Reply reply = new Reply();
		reply.setId("jeongh");
		reply.setPartyNum(104);
		reply.setContents("삽입 테스트 중입니다 ");
		reply.setGroupNo(1);
		
		dao.create(reply);
		
	}

}
