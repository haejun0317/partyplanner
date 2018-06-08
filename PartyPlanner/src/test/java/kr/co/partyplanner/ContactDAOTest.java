package kr.co.partyplanner;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.partyplanner.contact.dao.ContactDAO;
import kr.co.partyplanner.contact.domain.Contact;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ContactDAOTest {

	Logger logger = Logger.getLogger(ContactDAOTest.class);

	@Inject
	private ContactDAO dao;

	@Test
	public void testCreate() throws Exception {
		Contact contact = new Contact();
		contact.setName("드림");
		contact.setEmail("emfla@naver.com");
		contact.setMessage("여기는 음향 전문 업체입니다.");
		contact.setSubject("음향업체");
		
		dao.regist(contact);

		logger.info("회원 생성 완료");
	}

}
