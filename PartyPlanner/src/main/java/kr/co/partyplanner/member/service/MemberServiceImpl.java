package kr.co.partyplanner.member.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.member.dao.MemberDAO;
import kr.co.partyplanner.member.domain.Member;

@Service
public class MemberServiceImpl implements MemberServcie {
	
	@Inject
	private MemberDAO dao;

	/** 회원 등록 서비스 */
	@Override
	public void regist(Member member) throws Exception {
		dao.create(member);
	}
	
	/**회원 정보 리스트 출력*/
	@Override
	public List<Member> member() throws Exception {
		return dao.member();
	}

	/**회원 정보 아이디로 검색 */
	@Override
	public Member mread(String id) throws Exception {
		return dao.mread(id);
	}

	/**회원 정보 수정*/
	@Override
	public void update(Member member) throws Exception {
		dao.update(member);
	}


}
