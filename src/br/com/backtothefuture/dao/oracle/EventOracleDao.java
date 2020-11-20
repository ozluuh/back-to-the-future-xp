package br.com.backtothefuture.dao.oracle;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.backtothefuture.bean.CharacterEvent;
import br.com.backtothefuture.bean.Event;
import br.com.backtothefuture.dao.EventDao;

public class EventOracleDao implements EventDao {

	private Connection connection;
	private PreparedStatement stmt;
	private ResultSet result;
	private String sql;

	public EventOracleDao(Connection connection)
			throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		this.connection = connection;
	}

	private Event parse(ResultSet rs) throws SQLException {
		int eventId = result.getInt("id_event");
		String eventName = result.getString("nm_event");
		String eventDescription = result.getString("ds_event");
		String temporalPosition = result.getString("in_temporal_position");

		Event event = new Event(eventId, eventName, eventDescription, temporalPosition);

		return event;
	}

	@Override
	public List<Event> eventsByCharacter(List<CharacterEvent> listEvents) throws SQLException {

		List<Event> list = new ArrayList<Event>();

		for (CharacterEvent charEvent : listEvents) {

			Event event = charEvent.getEvent();

			event = search(event);

			list.add(event);
		}

		return list;
	}

	@Override
	public Event search(Event event) throws SQLException {

		sql = "SELECT * FROM T_BTF_EVENT WHERE ID_EVENT= ?";

		stmt = connection.prepareStatement(sql);

		stmt.setInt(1, event.getId());

		result = stmt.executeQuery();

		if (result.next()) {
			event = parse(result);
		}

		result.close();
		stmt.close();

		return event;
	}

	@Override
	public List<Event> allEvents() throws SQLException, ClassNotFoundException {

		List<Event> list = new ArrayList<Event>();

		sql = "SELECT * FROM T_BTF_EVENT";

		stmt = connection.prepareStatement(sql);

		result = stmt.executeQuery();

		while (result.next()) {

			list.add(parse(result));
		}

		result.close();
		stmt.close();

		return list;
	}

	public List<Event> eventByPeriod(Event event) throws SQLException {

		List<Event> list = new ArrayList<Event>();

		sql = "SELECT * FROM T_BTF_EVENT where in_temporal_position = ?";

		stmt = connection.prepareStatement(sql);
		stmt.setString(1, event.getTemporalPosition());

		result = stmt.executeQuery();

		while (result.next()) {

			list.add(parse(result));

		}

		return list;
	}

}
