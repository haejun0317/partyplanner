package kr.co.partyplanner.option.dao;

import java.util.List;

import kr.co.partyplanner.option.domain.Sound;

public interface SoundDAO {
	/** 전체 리스트 출력 */
	public List<Sound> listAll() throws Exception;
}
