package kr.co.partyplanner.event.service;

import java.util.List;

import kr.co.partyplanner.event.domain.EventSchedule;
import kr.co.partyplanner.event.domain.Goods;

public interface GoodsService {

	/** name에 해당하는 행사 정보 불러오기 */
	public List<Goods> read(String name) throws Exception;
	
	/** 물품 전체 리스트 불러오기 */
	public List<Goods> listAll() throws Exception;
	
}
