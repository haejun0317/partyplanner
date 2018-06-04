package kr.co.partyplanner.reply.service;


import java.util.List;

import kr.co.partyplanner.reply.domain.Reply;

public interface ReplyService {
	
	/** 파티번호에 대한 회원 리스트 */
	public List<Reply> listAll(int num)throws Exception;
	
	/** 댓글 등록 */
	public void create(Reply reply)throws Exception;

}
