package kr.co.partyplanner.option.service;

import java.util.List;

import kr.co.partyplanner.option.domain.Staff;

public interface StaffService {
	/** staff 전체 리스트 출력 서비스 */
	public List<Staff> listAll() throws Exception;
}
