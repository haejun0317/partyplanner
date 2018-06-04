package kr.co.partyplanner.reply.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.reply.dao.ReplyDAO;
import kr.co.partyplanner.reply.domain.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;
	
	/** 댓글 목록 리스트 출력*/
	@Override
	public List<Reply> listAll() throws Exception {
		return dao.listAll();
	}


}
