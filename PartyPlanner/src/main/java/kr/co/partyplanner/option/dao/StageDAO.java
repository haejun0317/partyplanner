package kr.co.partyplanner.option.dao;

import java.util.List;

import kr.co.partyplanner.option.domain.Light;
import kr.co.partyplanner.option.domain.Stage;

public interface StageDAO {

	/** 전체 리스트 출력 */
	public List<Stage> listAll() throws Exception;
	
	/** 옵션 불러오기 출력 */
	public Stage read(String name) throws Exception;
}
