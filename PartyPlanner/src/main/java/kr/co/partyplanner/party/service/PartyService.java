package kr.co.partyplanner.party.service;

import java.util.List;

import kr.co.partyplanner.party.domain.Party;
import kr.co.partyplanner.party.domain.SearchCriteria;

public interface PartyService {
	
	/**파티 전체 보기*/
	public List<Party> listAll() throws Exception;
	
	/**파티 선택 보기*/
	public Party read(int num) throws Exception;
	
	/**파티 검색*/
	public List<Party> search(SearchCriteria cri) throws Exception;
	
	/** 마이페이지의 참여 파티 전체 목록 출력 */
	public List<Party> myPartyListAll(String id)throws Exception;
	
	/** 모집인원 카운트 하는것*/
	public int joinCount(int num) throws Exception;

}
