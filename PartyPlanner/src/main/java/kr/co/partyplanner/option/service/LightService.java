package kr.co.partyplanner.option.service;

import java.util.List;

import kr.co.partyplanner.option.domain.Light;

public interface LightService {
	/** light 전체 리스트 출력 서비스 */
	public List<Light> listAll() throws Exception;
}
