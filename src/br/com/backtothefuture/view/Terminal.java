package br.com.backtothefuture.view;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import br.com.backtothefuture.bean.Character;
import br.com.backtothefuture.bo.CharacterBo;
import br.com.backtothefuture.connection.ConnectionManager;

public class Terminal {

	public static void printchar() throws SQLException {
		
	}

	public static void main(String[] args) throws SQLException {
		Connection connection = null;
		CharacterBo characterBo;

		try {
			connection = ConnectionManager.getInstance().getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			characterBo = new CharacterBo(connection);
			List<Character> list = characterBo.listCharacters();

			for (Character character : list) {
				System.out.println(character.getActorName());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
