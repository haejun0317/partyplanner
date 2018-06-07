package kr.co.partyplanner.plangoods.dao;

import kr.co.partyplanner.plangoods.domain.PlanGoods;

public interface PlanGoodsDao {
	
	/** 이름으로 굿즈 검색하기 */
	public PlanGoods read(String name) throws Exception;
	 
	/** 기획서별 물품 생성하기 */
	public void create(PlanGoods planGoods) throws Exception;

}
