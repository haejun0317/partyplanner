package kr.co.partyplanner.party.domain;


public class SearchCriteria{
	
	/*카테고리별 검색*/
	private String category;
	
	/*장소별 검색*/
	private String place;
	
	/*비용으로 검색*/
	private int price;
	
	/*요일로 검색 1:일, 2:월, 3:화, 4:수, 5:목, 6:금, 7:토*/
	private String week;
	
	/*시간으로 검색*/
	private String time;
	
	/*파티기간으로 검색*/
	private String partyPeriod;
	
	public SearchCriteria() {
		
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPartyPeriod() {
		return partyPeriod;
	}

	public void setPartyPeriod(String partyPeriod) {
		this.partyPeriod = partyPeriod;
	}

	@Override
	public String toString() {
		return "SearchCriteria [category=" + category + ", place=" + place + ", price=" + price + ", week=" + week
				+ ", time=" + time + ", partyPeriod=" + partyPeriod + "]";
	}

	
	
}
