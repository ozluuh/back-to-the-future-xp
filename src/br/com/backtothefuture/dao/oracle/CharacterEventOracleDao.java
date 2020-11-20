package br.com.backtothefuture.dao.oracle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.backtothefuture.bean.Character;
import br.com.backtothefuture.bean.CharacterEvent;
import br.com.backtothefuture.bean.Event;
import br.com.backtothefuture.dao.CharacterEventDao;

public class CharacterEventOracleDao implements CharacterEventDao {

	private Connection connection;
	private PreparedStatement stmt;
	private ResultSet result;
	private String sql;
	private CharacterOracleDao characterDao;
	private EventOracleDao eventDao;

	public CharacterEventOracleDao(Connection connection) throws Exception {
		this.connection = connection;
		characterDao = new CharacterOracleDao(connection);
		eventDao = new EventOracleDao(connection);
	}
	
	private CharacterEvent parse(ResultSet rs) throws Exception {
		CharacterEvent charEvent = new CharacterEvent();
		Character character = new Character();
		Event event = new Event();
		
		int eventId = result.getInt("id_event");
		int charId = result.getInt("id_character");
		int eventCharacterAge = result.getInt("in_age");
		
		event.setId(eventId);
		character.setId(charId);

		event = eventDao.search(event);
		character = characterDao.search(character);
		
		charEvent.setEventCharacterAge(eventCharacterAge);
		charEvent.setCharacter(character);
		charEvent.setEvent(event);
		
		return charEvent;
	}

//	public CharacterEvent search(CharacterEvent characterEvent) throws Exception {
//
//		sql = "Select * from t_btf_character_event where id = ? ";
//
//		stmt = connection.prepareStatement(sql);
//		stmt.setInt(1, characterEvent.getId());
//
//		result = stmt.executeQuery();
//
//		if (result.next()) {
//			characterEvent = parse(result);
//		}
//
//		result.close();
//		stmt.close();
//
//		return characterEvent;
//	}

	public List<CharacterEvent> listCharacterEvent(Character character) throws Exception {

		List<CharacterEvent> list = new ArrayList<CharacterEvent>();

		sql = "Select * from t_btf_character_event where id_character = ?";

		stmt = connection.prepareStatement(sql);
		stmt.setInt(1, character.getId());

		result = stmt.executeQuery();

		while (result.next()) {

			list.add(parse(result));
		}

		result.close();
		stmt.close();

		return list;
	}

	public List<CharacterEvent> listCharacterByEvent(Event event) throws Exception {

		List<CharacterEvent> list = new ArrayList<>();

		sql = "SELECT * FROM T_BTF_CHARACTER_EVENT WHERE ID_EVENT = ?";

		stmt = connection.prepareStatement(sql);

		stmt.setInt(1, event.getId());

		result = stmt.executeQuery();

		while (result.next()) {

			
			list.add(parse(result));
		}
		
		result.close();
		stmt.close();
		return list;
	}

}
