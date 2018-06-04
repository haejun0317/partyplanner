package kr.co.partyplanner.option.domain;

public class Sound {
	private String name;
	private int price;
	private String profile;
	private int people;
	
	public Sound() {}
	
	public Sound(String name, int price, String profile, int people) {
		this.name = name;
		this.price = price;
		this.profile = profile;
		this.people = people;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	@Override
	public String toString() {
		return "Sound [name=" + name + ", price=" + price + ", profile=" + profile + ", people=" + people + "]";
	}
}
