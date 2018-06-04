package kr.co.partyplanner.option.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.option.dao.StaffDAO;
import kr.co.partyplanner.option.domain.Staff;

@Service
public class StaffServiceImpl implements StaffService {

	@Inject
	private StaffDAO dao;
	
	@Override
	public List<Staff> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

}
