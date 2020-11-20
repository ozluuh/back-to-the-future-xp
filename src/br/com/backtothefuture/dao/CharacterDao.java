package br.com.backtothefuture.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.backtothefuture.bean.Character;
import br.com.backtothefuture.bean.CharacterEvent;

public interface CharacterDao {

	List<Character> listCharacters() throws SQLException;
	Character search(Character character) throws SQLException;
	List<Character> characterByEvent(List<CharacterEvent> listCharacterEvent ) throws SQLException;
}
