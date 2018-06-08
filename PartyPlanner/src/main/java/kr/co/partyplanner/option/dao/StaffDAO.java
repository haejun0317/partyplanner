package kr.co.partyplanner.option.dao;

import kr.co.partyplanner.option.domain.Light;
import kr.co.partyplanner.option.domain.Staff;

import java.util.List;

public interface StaffDAO {
	/** 전체 리스트 출력 */
	public List<Staff> listAll() throws Exception;
	
	/** 옵션 불러오기 출력 */
	public Staff read(String name) throws Exception;
}
