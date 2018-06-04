package kr.co.partyplanner.event.domain;

public class ScheduleItem {
	
	private String name;
	
	public ScheduleItem() {	}
	

	public ScheduleItem(String name) {
		super();
		this.name = name;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}



	@Override
	public String toString() {
		return "ScheduleItem [name=" + name + "]";
	}
	
	
	
	
	
}
