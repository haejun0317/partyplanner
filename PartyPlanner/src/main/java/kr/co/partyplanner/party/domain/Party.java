package kr.co.partyplanner.party.domain;

public class Party {

	private int num;
	   private String category;
	   private String name;
	   private String place;
	   private String content;
	   private String image;
	   private String price;
	   private String primeum;
	   private String partner;
	   private int recruit;
	    private String recstart;
	   private String recend;
	   private String regdate;
	   private String startdate;
	   private String enddate;
	   private int checknum;
	   private String member;
	   
	   public Party() {}

	   public Party(int num,String category , String name ,String place ,String content,String image,
			   String price, String primeum ,String partner,int recruit,  String recstart, String recend,
	         String regdate,String startdate, String enddate, int checknum ,String member) {
	      
	      this.num=num;
	      this.category=category;
	      this.name=name;
	      this.place=place;
	      this.content=content;
	      this.image=image;
	      this.price=price;
	      this.primeum=primeum;
	      this.partner=partner;
	      this.recruit=recruit;
	      this.recstart=recstart;
	      this.recend=recend;
	      this.regdate=regdate;
	      this.startdate=startdate;
	      this.enddate=enddate;
	      this.checknum=checknum;
	      this.member=member;
	   }

	   public int getNum() {
	      return num;
	   }

	   public void setNum(int num) {
	      this.num = num;
	   }

	   public String getCategory() {
	      return category;
	   }

	   public void setCategory(String category) {
	      this.category = category;
	   }

	   public String getName() {
	      return name;
	   }

	   public void setName(String name) {
	      this.name = name;
	   }

	   public String getPlace() {
	      return place;
	   }

	   public void setPlace(String place) {
	      this.place = place;
	   }

	   public String getContent() {
	      return content;
	   }

	   public void setContent(String content) {
	      this.content = content;
	   }

	   public String getImage() {
	      return image;
	   }

	   public void setImage(String image) {
	      this.image = image;
	   }

	   public String getPrice() {
	      return price;
	   }

	   public void setPrice(String price) {
	      this.price = price;
	   }

	   public String getPrimeum() {
	      return primeum;
	   }

	   public void setPrimeum(String primeum) {
	      this.primeum = primeum;
	   }

	   public String getPartner() {
	      return partner;
	   }

	   public void setPartner(String partner) {
	      this.partner = partner;
	   }

	   public int getRecruit() {
	      return recruit;
	   }

	   public void setRecruit(int recruit) {
	      this.recruit = recruit;
	   }

	   public String getRecstart() {
	      return recstart;
	   }

	   public void setRecstart(String recstart) {
	      this.recstart = recstart;
	   }

	   public String getRecend() {
	      return recend;
	   }

	   public void setRecend(String recend) {
	      this.recend = recend;
	   }

	   public String getRegdate() {
	      return regdate;
	   }

	   public void setRegdate(String regdate) {
	      this.regdate = regdate;
	   }

	   public String getStartdate() {
	      return startdate;
	   }

	   public void setStartdate(String startdate) {
	      this.startdate = startdate;
	   }

	   public String getEnddate() {
	      return enddate;
	   }

	   public void setEnddate(String enddate) {
	      this.enddate = enddate;
	   }

	   public int getChecknum() {
	      return checknum;
	   }

	   public void setChecknum(int checknum) {
	      this.checknum = checknum;
	   }

	 

	   public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	@Override
	   public String toString() {
	      return "Party [num=" + num + ", category=" + category + ", name=" + name + ", place=" + place + ", content="
	            + content + ", image=" + image + ", price=" + price + ", primeum=" + primeum + ", partner=" + partner
	            + ", recruit=" + recruit + ", recstart=" + recstart + ", recend=" + recend + ", regdate=" + regdate
	            + ", startdate=" + startdate + ", enddate=" + enddate + ", checknum=" + checknum + ", member="
	            + member + "]";
	   }

	   
}
