package kr.co.partyplanner.member.dao;

import java.util.List;

import kr.co.partyplanner.member.domain.Member;

public interface MemberDAO {
	
	/** Member 생성 */
	public void create(Member member) throws Exception;
	
	/** 회원정보 리스트 출력*/
	public List<Member> member() throws Exception;
	
	/** 아이디로  회원정보 불러오기 */
	public Member mread(String id)throws Exception;

	
	/** 회원 정보 수정 메소드*/
	public void update(Member member)throws Exception;
	
}
