package br.com.backtothefuture.bean;

public class CharacterEvent {

	private int id;
	private Event event;
	private Character character;
	private int eventCharacterAge;
	
	@Override
	public String toString() {
		return id + "," + event + "," + character + "," + eventCharacterAge;
	}

	public CharacterEvent(int id, Event event, Character character, int eventCharacterAge) {
		super();
		this.id = id;
		this.event = event;
		this.character = character;
		this.eventCharacterAge = eventCharacterAge;
	}

	public CharacterEvent() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

	public Character getCharacter() {
		return character;
	}

	public void setCharacter(Character character) {
		this.character = character;
	}

	public int getEventCharacterAge() {
		return eventCharacterAge;
	}

	public void setEventCharacterAge(int eventCharacterAge) {
		this.eventCharacterAge = eventCharacterAge;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
}
