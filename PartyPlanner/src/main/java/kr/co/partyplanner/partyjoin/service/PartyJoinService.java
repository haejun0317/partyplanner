package kr.co.partyplanner.partyjoin.service;


import java.util.List;

import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.partyjoin.domain.PartyJoin;

public interface PartyJoinService {
	
	public void create(PartyJoin pj)throws Exception;
	
	/**  아이디에 대한 리스트*/
	public List<PartyJoin> listparty(String id)throws Exception;
	
	/** 파티번호에 대한 회원 리스트 */
	public List<Member> listReq(int num) throws Exception;

}
