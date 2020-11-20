package br.com.backtothefuture.factory;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.backtothefuture.dao.CharacterDao;
import br.com.backtothefuture.dao.CharacterEventDao;
import br.com.backtothefuture.dao.EventDao;
import br.com.backtothefuture.dao.oracle.CharacterEventOracleDao;
import br.com.backtothefuture.dao.oracle.CharacterOracleDao;
import br.com.backtothefuture.dao.oracle.EventOracleDao;

public class OracleDaoFactory extends AbstractDaoFactory {

	public CharacterDao getCharacterDao(Connection connection) throws Exception, ClassNotFoundException, SQLException {
		return new CharacterOracleDao(connection);
	}

	@Override
	public EventDao getEventDao(Connection connection) throws ClassNotFoundException, SQLException, Exception {
		return new EventOracleDao(connection);
	}

	@Override
	public CharacterEventDao getCharacterEventDao(Connection connection)
			throws ClassNotFoundException, SQLException, Exception {
		return new CharacterEventOracleDao(connection);
	}

}
