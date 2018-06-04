package kr.co.partyplanner.event.domain;

public class Event {
	private String name;
	private String type;
	private String image;
	
	public Event() {}

	public Event(String name, String type, String image) {
		this.name = name;
		this.type = type;
		this.image = image;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Event [name=" + name + ", type=" + type + ", image=" + image + "]";
	}
	
}
