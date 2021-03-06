package kr.co.partyplanner.option.service;

import java.util.List;

import kr.co.partyplanner.option.domain.Mc;

public interface McService {
	/** mc 전체 리스트 출력 서비스 */
	public List<Mc> listAll() throws Exception;
	
	/** 옵션 불러오기 출력 */
	public Mc read(String name) throws Exception;
}
