package br.com.backtothefuture.bean;

public class Character {

	private int id;
	private String characterName;
	private String birthDate;
	private int age;
	private String actorName;
	private int relevance;
	private int importance;
	private String characterDescription;
	private String profileImage;
	
	public Character(int id, String characterName, String birthDate, int age, String actorName, int relevance,
			int importance, String characterDescription, String profileImage) {
		super();
		this.id = id;
		this.characterName = characterName;
		this.birthDate = birthDate;
		this.age = age;
		this.actorName = actorName;
		this.relevance = relevance;
		this.importance = importance;
		this.characterDescription = characterDescription;
		this.profileImage = profileImage;
	}

	public Character() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCharacterName() {
		return characterName;
	}

	public void setCharacterName(String characterName) {
		this.characterName = characterName;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getActorName() {
		return actorName;
	}

	public void setActorName(String actorName) {
		this.actorName = actorName;
	}

	public int getRelevance() {
		return relevance;
	}

	public void setRelevance(int relevance) {
		this.relevance = relevance;
	}

	public int getImportance() {
		return importance;
	}

	public void setImportance(int importance) {
		this.importance = importance;
	}

	public String getCharacterDescription() {
		return characterDescription;
	}

	public void setCharacterDescription(String characterDescription) {
		this.characterDescription = characterDescription;
	}
	
	public String getProfileImage() {
		return profileImage;
	}
	
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	
	
}
