package kr.co.partyplanner.partyjoin.dao;


import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.partyjoin.domain.PartyJoin;


@Repository
public class PartyJoinDAOImpl implements PartyJoinDAO {

	@Inject
	private SqlSession session;

	private static final String namespace = "kr.co.partyplanner.mapper.PartyJoinMapper";

	@Override
	public void create(PartyJoin pj) throws Exception {
		session.insert(namespace+".create",pj);
	}

	@Override
	public List<PartyJoin> listParty(String id) throws Exception {
		return session.selectList(namespace +".listParty",id);
	}

	@Override
	public List<Member> listReq(int num) throws Exception {
		return session.selectList(namespace+".listReq", num);
	}



}
