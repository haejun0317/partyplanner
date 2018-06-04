package kr.co.partyplanner.party.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.party.domain.Party;
import kr.co.partyplanner.party.domain.SearchCriteria;

@Repository
public class PartyDaoImpl implements PartyDao {

	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "kr.co.partyplanner.mapper.partyMapper";
	
	@Override
	public List<Party> listAll() throws Exception{
		
		return sqlSession.selectList(namespace + ".listAll");
		
	}
	
	@Override
	public Party read(int num) throws Exception{
		
		return sqlSession.selectOne(namespace+".read",num);
	}
	
	@Override
	public List<Party> search(SearchCriteria cri) throws Exception{
		
		return sqlSession.selectList(namespace + ".search",cri);
	}
	
	/** 마이페이지의 참여 파티 전체 목록 출력 */
	@Override
	public List<Party> myPartyListAll(String id) throws Exception {
		return sqlSession.selectList(namespace +".myPartyListAll",id);
	}
}