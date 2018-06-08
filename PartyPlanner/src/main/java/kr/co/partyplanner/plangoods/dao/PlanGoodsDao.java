package kr.co.partyplanner.plangoods.dao;

import java.util.List;

import kr.co.partyplanner.plangoods.domain.PlanGoods;

public interface PlanGoodsDao {
	
	/** 기획서별 이름로 굿즈 검색하기 */
	public PlanGoods read(String name) throws Exception;
	 
	/** 기획서별 물품 생성하기 */
	public void create(PlanGoods planGoods) throws Exception;
	
	/** 기획서별 모든 물품 리스트 가져오기 */
	public List<PlanGoods> listGodods(int num) throws Exception;

}
