package br.com.backtothefuture.bo;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.backtothefuture.bean.Character;
import br.com.backtothefuture.bean.CharacterEvent;
import br.com.backtothefuture.bean.Event;
import br.com.backtothefuture.dao.CharacterEventDao;
import br.com.backtothefuture.factory.AbstractDaoFactory;

public class CharacterEventBo {

	private static CharacterEventDao dao;
	@SuppressWarnings("unused")
	private Connection connection;

	public CharacterEventBo(Connection connection) throws ClassNotFoundException, SQLException, Exception {
		dao = AbstractDaoFactory.getDaoFactory(AbstractDaoFactory.ORACLE).getCharacterEventDao(connection);
		this.connection = connection;
	}
	
	public List<CharacterEvent> listCharacterEvent(Character character){
		
		List<CharacterEvent> list = new ArrayList<CharacterEvent>();
		
		try {
			list = dao.listCharacterEvent(character);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<CharacterEvent> listCharacterByEvent(Event event) {
		
		List<CharacterEvent> list = new ArrayList<>();
		
		try {
			list = dao.listCharacterByEvent(event);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
