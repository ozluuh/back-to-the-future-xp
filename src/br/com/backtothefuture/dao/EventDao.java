package br.com.backtothefuture.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.backtothefuture.bean.CharacterEvent;
import br.com.backtothefuture.bean.Event;



public interface EventDao {

	
	List<Event> eventsByCharacter(List<CharacterEvent> listEvents) throws SQLException, ClassNotFoundException;
	Event search(Event event) throws SQLException, ClassNotFoundException;
	List<Event> allEvents() throws SQLException, ClassNotFoundException;
	List<Event> eventByPeriod(Event event) throws SQLException;

}
