package kr.co.partyplanner.event.domain;

public class Goods {
	private String name;
	private int price;
	private int rent;
	private String optionName;
	
	public Goods() {
		
	}
	public Goods(String name, int price, int rent, String optionName) {
		super();
		this.name = name;
		this.price = price;
		this.rent = rent;
		this.optionName = optionName;
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
	public int getRent() {
		return rent;
	}
	public void setRent(int rent) {
		this.rent = rent;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	
	@Override
	public String toString() {
		return "Goods [name=" + name + ", price=" + price + ", rent=" + rent + ", optionName=" + optionName + "]";
	}
	
	
	
	
}
