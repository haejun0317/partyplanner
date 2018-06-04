package kr.co.partyplanner.event.domain;

public class ScheduleOption {
	
	private String eventName;
	private String itemName;
	private String name;
	
	public ScheduleOption() {
		
	}
	
	public ScheduleOption(String eventName, String itemName, String name) {
		super();
		this.eventName = eventName;
		this.itemName = itemName;
		this.name = name;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}



	@Override
	public String toString() {
		return "EventOption [eventName=" + eventName + ", itemName=" + itemName + ", name=" + name + "]";
	}
	
	
	
	
	
		
}
