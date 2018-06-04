package kr.co.partyplanner.option.dao;

import java.util.List;

import kr.co.partyplanner.option.domain.Mc;

public interface McDAO {
	
	/** 전체 리스트 출력 */
	public List<Mc> listAll() throws Exception;
	
}
