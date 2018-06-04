package kr.co.partyplanner.partyjoin.dao;

import java.util.List;

import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.partyjoin.domain.PartyJoin;

public interface PartyJoinDAO {
	
	/** 파티 참가 생성 */
	public void create(PartyJoin pj)throws Exception;
	
	/** 해당 id에 대한 파티리스트 */
	public List<PartyJoin> listParty(String id) throws Exception;
	
	/** 파티번호에 대한 회원 리스트 */
	public List<Member> listReq(int num) throws Exception;
}
