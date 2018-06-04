package kr.co.partyplanner;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.member.dao.MemberDAO;
import kr.co.partyplanner.member.domain.Member;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class MemberDAOTest {
	
	Logger logger = Logger.getLogger(MemberDAOTest.class);
	
	@Inject
	private MemberDAO dao;
	
	/** 회원가입 생성 테스트 */
	@Test
	public void testCreate() throws Exception {
		Member member = new Member();
		member.setId("testtt");
		member.setPasswd("test");
		member.setName("테스트용");
		member.setEmail("test@naver.com");
		member.setPhone("010-1111-2222");
		
		dao.create(member);
		
		logger.info("회원 생성 완료");
	}
	

}
