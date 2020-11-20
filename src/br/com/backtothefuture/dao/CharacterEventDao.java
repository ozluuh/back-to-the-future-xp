package br.com.backtothefuture.dao;

import java.util.List;

import br.com.backtothefuture.bean.Character;
import br.com.backtothefuture.bean.CharacterEvent;
import br.com.backtothefuture.bean.Event;

public interface CharacterEventDao {
	
//	CharacterEvent search(CharacterEvent charEvent) throws Exception;
	List<CharacterEvent> listCharacterEvent(Character character) throws Exception;
	List<CharacterEvent> listCharacterByEvent(Event event) throws Exception;	
}
