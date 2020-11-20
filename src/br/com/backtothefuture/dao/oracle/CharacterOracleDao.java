package br.com.backtothefuture.dao.oracle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.backtothefuture.bean.Character;
import br.com.backtothefuture.bean.CharacterEvent;
import br.com.backtothefuture.dao.CharacterDao;

public class CharacterOracleDao implements CharacterDao {

	Connection connection;
	PreparedStatement stmt;
	ResultSet result;
	String sql;

	public CharacterOracleDao(Connection connection) throws Exception {
		this.connection = connection;
	}

	private Character parse(ResultSet rs) throws SQLException {
		int id = result.getInt("id_character");
		String characterName = result.getString("nm_character");
		String birthDate = result.getString("dt_birth");
		int age = result.getInt("in_age");
		String actorName = result.getString("nm_actor");
		int relevance = result.getInt("in_relevance");
		int importance = result.getInt("in_importance");
		String characterDescription = result.getString("ds_character");
		String profileImage = result.getString("im_profile");

		Character character = new Character(id, characterName, birthDate, age, actorName, relevance, importance,
				characterDescription, profileImage);

		return character;
	}

	public List<Character> listCharacters() throws SQLException {

		List<Character> list = new ArrayList<Character>();
		sql = "SELECT * FROM T_BTF_CHARACTER order by id_character";

		stmt = connection.prepareStatement(sql);
		result = stmt.executeQuery();

		while (result.next()) {

			list.add(parse(result));
		}

		result.close();
		stmt.close();

		return list;
	}

	@Override
	public Character search(Character character) throws SQLException {

		sql = "SELECT * FROM T_BTF_CHARACTER WHERE ID_CHARACTER = ?";

		stmt = connection.prepareStatement(sql);
		stmt.setInt(1, character.getId());

		result = stmt.executeQuery();

		if (result.next()) {

			character = parse(result);
		}

		result.close();
		stmt.close();

		return character;
	}

	public List<Character> characterByEvent(List<CharacterEvent> listCharacterEvent) throws SQLException {

		List<Character> list = new ArrayList<>();

		sql = "SELECT * FROM T_BTF_CHARACTER WHERE ID_CHARACTER = ?";

		for (CharacterEvent charEvent : listCharacterEvent) {

			Character character = charEvent.getCharacter();
			stmt = connection.prepareStatement(sql);

			result = stmt.executeQuery();

			if (result.next()) {

				character = parse(result);

				list.add(character);
			}

		}

		return list;
	}

}
