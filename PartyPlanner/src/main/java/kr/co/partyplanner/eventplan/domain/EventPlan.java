package kr.co.partyplanner.eventplan.domain;

public class EventPlan {
	
	private int num;
	private String schedule;
	private String mc;
	private String stage;
	private String light;
	private String sound;
	private String staff;
	private int people;
	private String startday;
	private String endday;
	private String place;
	private String id;
	private String name;
	
	public EventPlan() {}

	public EventPlan(int num, String schedule, String mc, String stage, String light, String sound, String staff,
			int people, String startday, String endday, String place, String id, String name) {
		super();
		this.num = num;
		this.schedule = schedule;
		this.mc = mc;
		this.stage = stage;
		this.light = light;
		this.sound = sound;
		this.staff = staff;
		this.people = people;
		this.startday = startday;
		this.endday = endday;
		this.place = place;
		this.id = id;
		this.name = name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getMc() {
		return mc;
	}

	public void setMc(String mc) {
		this.mc = mc;
	}

	public String getStage() {
		return stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}

	public String getLight() {
		return light;
	}

	public void setLight(String light) {
		this.light = light;
	}

	public String getSound() {
		return sound;
	}

	public void setSound(String sound) {
		this.sound = sound;
	}

	public String getStaff() {
		return staff;
	}

	public void setStaff(String staff) {
		this.staff = staff;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getStartday() {
		return startday;
	}

	public void setStartday(String startday) {
		this.startday = startday;
	}

	public String getEndday() {
		return endday;
	}

	public void setEndday(String endday) {
		this.endday = endday;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "EventPlan [num=" + num + ", schedule=" + schedule + ", mc=" + mc + ", stage=" + stage + ", light="
				+ light + ", sound=" + sound + ", staff=" + staff + ", people=" + people + ", startday=" + startday
				+ ", endday=" + endday + ", place=" + place + ", id=" + id + ", name=" + name + "]";
	}
	
	

}

