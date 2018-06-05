package kr.co.partyplanner.event.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.event.domain.Goods;


@Repository
public class GoodsDAOImpl implements GoodsDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.GoodsMapper";

	@Override
	public List<Goods> read(String name) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".read", name);
	}

	@Override
	public List<Goods> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}
	

}
