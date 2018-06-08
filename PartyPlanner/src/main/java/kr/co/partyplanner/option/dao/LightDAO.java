package kr.co.partyplanner.option.dao;

import java.util.List;

import kr.co.partyplanner.option.domain.Light;

public interface LightDAO {
	/** 전체 리스트 출력 */
	public List<Light> listAll() throws Exception;
	
	/** 옵션 불러오기 출력 */
	public Light read(String name) throws Exception;
}
