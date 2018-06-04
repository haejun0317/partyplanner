package kr.co.partyplanner.member.service;

import java.util.List;

import kr.co.partyplanner.member.domain.Member;

public interface MemberServcie {
	/** 회원 등록 서비스 */
	public void regist(Member member) throws Exception;
	
	/**회원 정보 리스트 출력*/
	public List<Member> member()throws Exception;

	/**회원 정보 아이디로 검색 */
	public Member mread(String id)throws Exception;


	/**회원 정보 수정*/
	public void update(Member member)throws Exception;
}
