package kr.co.partyplanner.plangoods.service;

import kr.co.partyplanner.plangoods.domain.PlanGoods;

public interface PlanGoodsService {
	
	
	/**이름으로 굿즈 검색*/
	public PlanGoods read(String name) throws Exception;

}