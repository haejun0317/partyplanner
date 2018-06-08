package kr.co.partyplanner.contact.service;

import kr.co.partyplanner.contact.domain.Contact;


public interface ContactService {
	/** 협력업체가 글 작성 하기 */
	public void regist(Contact contact) throws Exception;

}
