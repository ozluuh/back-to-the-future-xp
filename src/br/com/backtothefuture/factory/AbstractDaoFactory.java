package br.com.backtothefuture.factory;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.backtothefuture.dao.CharacterDao;
import br.com.backtothefuture.dao.CharacterEventDao;
import br.com.backtothefuture.dao.EventDao;

public abstract class AbstractDaoFactory {

	public static final int ORACLE = 1;

	private static AbstractDaoFactory oracleFactory;

	public static AbstractDaoFactory getDaoFactory(int fabrica) {
		switch (fabrica) {
		case 1:
			if (oracleFactory == null) {
				oracleFactory = new OracleDaoFactory();
			}
			return oracleFactory;
		default:
			return null;
		}
	}
	
	public abstract CharacterDao getCharacterDao(Connection connection) throws ClassNotFoundException, SQLException, Exception;
	public abstract EventDao getEventDao(Connection connection) throws ClassNotFoundException, SQLException, Exception;
	public abstract CharacterEventDao getCharacterEventDao(Connection connection) throws ClassNotFoundException, SQLException, Exception;


}
