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
	
	/*파티기간으로 검색 시작기간*/
	private String startCal;
	
	/*파티기간으로 검색 시작기간*/
	private String endCal;
	
	/*인기순, 최근순, 마감순으로 검색*/
	private String soon;
	
	public SearchCriteria() {
		
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		if(category.equals("")) {
			this.category = null;
			return;
		}
		this.category = category;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		if(place.equals("")) {
			this.place = null;
			return;
		}
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
		if(week.equals("")) {
			this.week = null;
			return;
		}
		this.week = week;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		if(time.equals("")) {
			this.time = null;
			return;
		}
		this.time = time;
	}

	public String getStartCal() {
		return startCal;
	}

	public void setStartCal(String startCal) {
		if(startCal.equals("")) {
			this.startCal = null;
			return;
		}
		this.startCal = startCal;
	}

	public String getEndCal() {
		return endCal;
	}

	public void setEndCal(String endCal) {
		if(endCal.equals("")) {
			this.endCal = null;
			return;
		}
		this.endCal = endCal;
	}

	public String getSoon() {
		return soon;
	}

	public void setSoon(String soon) {
		if(soon.equals("")) {
			this.soon = null;
			return;
		}
		this.soon = soon;
	}

	@Override
	public String toString() {
		return "SearchCriteria [category=" + category + ", place=" + place + ", price=" + price + ", week=" + week
				+ ", time=" + time + ", startCal=" + startCal + ", endCal=" + endCal + ", soon=" + soon + "]";
	}


	
	
}
