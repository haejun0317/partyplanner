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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class optionTest {
	
	Logger logger = Logger.getLogger(optionTest.class);
	
	@Inject
	private McDAO mcDao;
	@Inject
	private StageDAO stageDao;
	@Inject
	private StaffDAO staffDao;

	/** stage 리스트 테스트 */
//	@Test
	public void testListStage() throws Exception {
		List<Stage> stageList = stageDao.listAll();
		for (Stage stage : stageList) {
			logger.info(stage);
		}
	}
	/** mc 리스트 테스트 */
//	@Test
	public void testListMc() throws Exception {
		List<Mc> mcList = mcDao.listAll();
		for (Mc mc : mcList) {
			logger.info(mc);
		}
	}
	/** staff 리스트 테스트 */
//	@Test
	public void testListStaff() throws Exception {
		List<Staff> staffList = staffDao.listAll();
		for (Staff staff : staffList) {
			logger.info(staff);
		}
	}
	
//	@Test
	public void testReadMc() throws Exception {
		Mc mc = mcDao.read("이벤트");
		logger.info(mc);
	}


}
