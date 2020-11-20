package br.com.backtothefuture.bean;


public class Event {

	private int id;
	private String eventName;
	private String eventDescription;
	private String temporalPosition;
	
	@Override
	public String toString() {
		return id + "," + eventName + "," + eventDescription + "," + getTemporalPosition();
	}
	
	public Event(int id, String eventName, String eventDescription, String temporalPosition) {
		super();
		this.id = id;
		this.eventName = eventName;
		this.eventDescription = eventDescription;
		this.setTemporalPosition(temporalPosition);
	}

	public Event() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventDescription() {
		return eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public String getTemporalPosition() {
		return temporalPosition;
	}

	public void setTemporalPosition(String temporalPosition) {
		this.temporalPosition = temporalPosition;
	}

	
}
