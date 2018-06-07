package kr.co.partyplanner.partyjoin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.partyjoin.dao.PartyJoinDAO;
import kr.co.partyplanner.partyjoin.domain.PartyJoin;

@Service
public class PartyJoinServiceImpl implements PartyJoinService {

	@Inject
	private PartyJoinDAO dao;

	@Override
	public void create(PartyJoin pj) throws Exception {
		dao.create(pj);
	}

	@Override
	public List<PartyJoin> listparty(String id) throws Exception {
		return dao.listParty(id);
	}

	@Override
	public List<Member> listReq(int num) throws Exception {
		return dao.listReq(num);
	}

	@Override
	public void approveUpdate(PartyJoin partyJoin) throws Exception {
		dao.approveUpdate(partyJoin);
	}

	@Override
	public PartyJoin read(String id, int num) throws Exception {
		return dao.read(id, num);
	}

}
