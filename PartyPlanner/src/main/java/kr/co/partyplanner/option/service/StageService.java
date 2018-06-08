package kr.co.partyplanner.option.service;

import java.util.List;

import kr.co.partyplanner.option.domain.Stage;

public interface StageService {
	/** stage 전체 리스트 출력 서비스 */
	public List<Stage> listAll() throws Exception;
	
	/** 옵션 불러오기 출력 */
	public Stage read(String name) throws Exception;
}
