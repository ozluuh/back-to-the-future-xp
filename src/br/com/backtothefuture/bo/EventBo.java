package br.com.backtothefuture.bo;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.backtothefuture.bean.CharacterEvent;
import br.com.backtothefuture.bean.Event;
import br.com.backtothefuture.dao.EventDao;
import br.com.backtothefuture.factory.AbstractDaoFactory;

public class EventBo {

	private static EventDao dao;
	@SuppressWarnings("unused")
	private Connection connection;
	
	public EventBo(Connection connection) throws ClassNotFoundException, SQLException, Exception {
		dao = AbstractDaoFactory.getDaoFactory(AbstractDaoFactory.ORACLE).getEventDao(connection);
		this.connection = connection;
	}
	
	public Event search(Event event) {
		try {
			event = dao.search(event);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return event;
	}
	
	public List<Event> eventsByCharacter(List<CharacterEvent> listEvents) {

		List<Event> list = new ArrayList<Event>();
		
		try {
			list = dao.eventsByCharacter(listEvents);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<Event> allEvents(){

		List<Event> list = new ArrayList<Event>();
		
		try {
			list = dao.allEvents();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return list;

	}
	public List<Event> eventByPeriod(Event event){
		
		List<Event> list = new ArrayList<Event>();
		
		try {
			list = dao.eventByPeriod(event);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
}
