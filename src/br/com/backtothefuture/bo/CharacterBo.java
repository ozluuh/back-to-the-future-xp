package br.com.backtothefuture.bo;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.backtothefuture.bean.Character;
import br.com.backtothefuture.bean.CharacterEvent;
import br.com.backtothefuture.dao.CharacterDao;
import br.com.backtothefuture.factory.AbstractDaoFactory;


public class CharacterBo {
	
	private static CharacterDao dao;
	@SuppressWarnings("unused")
	private Connection connection;

	public CharacterBo(Connection connection) throws ClassNotFoundException, SQLException, Exception {
		dao = AbstractDaoFactory.getDaoFactory(AbstractDaoFactory.ORACLE).getCharacterDao(connection);
		this.connection = connection;
	}
	
	public List<Character> listCharacters(){
		
		List<Character> list = new ArrayList<Character>();
		
		try {
			list = dao.listCharacters();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public Character search(Character character) {
		
		try {
		character = dao.search(character);
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return character;
	}
	
	public List<Character> characterByEvent(List<CharacterEvent> listCharacterEvent ){
		
		List<Character> list = new ArrayList<>();
		
		try {
			list = dao.characterByEvent(listCharacterEvent);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
}
