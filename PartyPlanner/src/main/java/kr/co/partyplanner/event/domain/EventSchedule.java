package kr.co.partyplanner.event.domain;

public class EventSchedule {
	
	private String eventName;
	private String itemName;
	private String basic;
	private int basicLevel;
	private int time;
	private String vital;
	
	public EventSchedule() { }

	
	
	public EventSchedule(String eventName, String itemName, String basic, int basicLevel, int time, String vital) {
		super();
		this.eventName = eventName;
		this.itemName = itemName;
		this.basic = basic;
		this.basicLevel = basicLevel;
		this.time = time;
		this.vital = vital;
	}



	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getBasic() {
		return basic;
	}

	public void setBasic(String basic) {
		this.basic = basic;
	}

	public int getBasicLevel() {
		return basicLevel;
	}

	public void setBasicLevel(int basicLevel) {
		this.basicLevel = basicLevel;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public String getVital() {
		return vital;
	}

	public void setVital(String vital) {
		this.vital = vital;
	}



	@Override
	public String toString() {
		return "EventSchedule [eventName=" + eventName + ", itemName=" + itemName + ", basic=" + basic + ", basicLevel="
				+ basicLevel + ", time=" + time + ", vital=" + vital + "]";
	}
	
	
	
		
}
