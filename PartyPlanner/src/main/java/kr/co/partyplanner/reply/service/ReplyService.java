package kr.co.partyplanner.reply.service;


import java.util.List;

import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.partyjoin.domain.PartyJoin;
import kr.co.partyplanner.reply.domain.Reply;

public interface ReplyService {
	
	/** 파티번호에 대한 회원 리스트 */
	public List<Reply> listAll()throws Exception;

}
