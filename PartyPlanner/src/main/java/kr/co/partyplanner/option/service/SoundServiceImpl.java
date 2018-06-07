package kr.co.partyplanner.option.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.option.dao.SoundDAO;
import kr.co.partyplanner.option.domain.Sound;

@Service
public class SoundServiceImpl implements SoundService {

	@Inject
	private SoundDAO dao;
	@Override
	public List<Sound> listAll() throws Exception {
		return dao.listAll();
	}
	@Override
	public Sound read(String name) throws Exception {
		return dao.read(name);
	}

}
