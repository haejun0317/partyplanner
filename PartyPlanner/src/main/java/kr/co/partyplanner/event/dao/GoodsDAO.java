package kr.co.partyplanner.event.dao;

import java.util.List;

import kr.co.partyplanner.event.domain.Goods;


public interface GoodsDAO {

	/** name에 해당하는 행사 정보 불러오기 */
	public List<Goods> read(String name) throws Exception;
	
}
