package kr.co.partyplanner.contact.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.contact.dao.ContactDAO;
import kr.co.partyplanner.contact.domain.Contact;


@Service
public class ContactServiceImpl implements ContactService {
	@Inject
	private ContactDAO dao;
	
	@Override
	public void regist(Contact contact) throws Exception {
		dao.regist(contact);
	}
	

}
