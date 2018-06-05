package kr.co.partyplanner.plangoods.dao;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.plangoods.domain.PlanGoods;

@Repository
public class PlanGoodsDaoImpl implements PlanGoodsDao {

	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "kr.co.partyplanner.mapper.plangoodsMapper";
	
	/**파티 선택 보기*/
	@Override
	public PlanGoods read(String name) throws Exception{
		
		return sqlSession.selectOne(namespace+".read",name);
	}
}
