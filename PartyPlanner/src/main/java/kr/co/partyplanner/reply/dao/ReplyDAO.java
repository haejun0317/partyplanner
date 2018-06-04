package kr.co.partyplanner.reply.dao;

import java.util.List;
import kr.co.partyplanner.party.domain.Party;
import kr.co.partyplanner.reply.domain.Reply;

public interface ReplyDAO {
	/** 댓글 전체 목록 출력 */
	public List<Reply> listAll(int num) throws Exception;
	
	/** 댓글 작성 하기*/
	public void create(Reply reply)throws Exception;

	
}
