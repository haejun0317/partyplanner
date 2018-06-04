package kr.co.partyplanner.option.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.option.dao.LightDAO;
import kr.co.partyplanner.option.domain.Light;

@Service
public class LightServiceImpl implements LightService {
	
	@Inject
	private LightDAO dao;
	
	@Override
	public List<Light> listAll() throws Exception {
		return dao.listAll();
	}

}
