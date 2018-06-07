package kr.co.partyplanner.plangoods.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.co.partyplanner.plangoods.dao.PlanGoodsDao;
import kr.co.partyplanner.plangoods.domain.PlanGoods;


@Repository
public class PlanGoodsServiceImpl implements PlanGoodsService {

	@Inject
	private PlanGoodsDao dao;
	
	@Override
	public PlanGoods read(String name) throws Exception{
		return dao.read(name);
	}

	@Override
	public void create(PlanGoods planGoods) throws Exception {
		dao.create(planGoods);
	}

	@Override
	public List<PlanGoods> listGodods(int num) throws Exception {
		return dao.listGodods(num);
	}
}
