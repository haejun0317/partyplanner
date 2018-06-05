package kr.co.partyplanner.party;


import java.security.Provider.Service;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Part;
import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kr.co.partyplanner.party.dao.PartyDao;
import kr.co.partyplanner.party.domain.Party;
import kr.co.partyplanner.party.domain.SearchCriteria;
import kr.co.partyplanner.party.service.PartyService;


/**
 * WAS 없이 스프링 컨테이너 테스트
 * @author KOSTA
 *
 */
@RunWith(SpringJUnit4ClassRunner.class) //form.xml의 Spring Test에 포함된 기능 서버 구동
@WebAppConfiguration
//설정파일 위치를 알려주는 기능, **spring아래의 모든 디렉토리
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class PartyTest {
	
	Logger logger = Logger.getLogger(PartyTest.class);
	
	@Inject
	private PartyDao dao;
	
	@Inject
	private PartyService Service;
	
	/**전체 리스트 출력*/
//	@Test
	public void listAll() throws Exception{
		
		List<Party> list = dao.listAll();
		
		for (Party party : list) {
			logger.info(party);
		}
		
	}
	/**선택 파티 출력 테스트*/
//	@Test
	public void testRead() throws Exception{
		 Party party = dao.read(1);
		logger.info(party);
	}
	
	/**카테고리별 검색*/
//	@Test
	public void testSearch() throws Exception{
		
		SearchCriteria cri = new SearchCriteria();
		cri.setCategory("교육");
//		cri.setWeek("weekday");
		logger.info(cri);
		List<Party> search=  dao.search(cri);
		for (Party party : search) {
			logger.info(party);
		}
		
	}
	
	/** 카운트 테스트 */
	@Test
	public void testCount() throws Exception{
		int count = dao.joinCount(84);
		logger.info(count);
	}
	
}
