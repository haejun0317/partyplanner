package kr.co.partyplanner.partyjoin.dao;


import java.util.HashMap;
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

	/** 파티 참가 신청 눌렀을때 참가완료 */
	@Override
	public void create(PartyJoin pj) throws Exception {
		session.insert(namespace+".create",pj);
	}
	
	/** 회원 아이디로 참여한 파티 리스트로 출력 */
	@Override
	public List<PartyJoin> listParty(String id) throws Exception {
		return session.selectList(namespace +".listParty",id);
	}

	@Override
	public List<Member> listReq(int num) throws Exception {
		return session.selectList(namespace+".listReq", num);
	}
	
	/** 파티 참가신청 수락여부 */
	@Override
	public void approveUpdate(PartyJoin partyJoin) throws Exception {
		session.update(namespace+".approveUpdate" ,partyJoin);
	}

	@Override
	public PartyJoin read(String id, int num) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("num", num);
		return session.selectOne(namespace+".read", map);
	}



}
