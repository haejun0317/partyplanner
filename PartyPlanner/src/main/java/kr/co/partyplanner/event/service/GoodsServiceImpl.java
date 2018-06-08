package kr.co.partyplanner.event.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.event.dao.EventDAO;
import kr.co.partyplanner.event.dao.GoodsDAO;
import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.event.domain.Goods;
import kr.co.partyplanner.event.domain.ScheduleOption;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Inject
	private GoodsDAO dao;

	@Override
	public List<Goods> read(String name) throws Exception {
		return dao.read(name);
	}

	@Override
	public List<Goods> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public Goods readGoods(String name) throws Exception {
		return dao.readGoods(name);
	}

}
