package kr.co.partyplanner.option.service;

import java.util.List;

import kr.co.partyplanner.option.domain.Sound;

public interface SoundService {
	/** sound 전체 리스트 출력 서비스 */
	public List<Sound> listAll() throws Exception;
	
	/** 옵션 불러오기 출력 */
	public Sound read(String name) throws Exception;
}
