package kr.co.partyplanner.member.domain;

public class Member {
	private String id;
	private String passwd;
	private String name;
	private String email;;
	private String phone;
	private String image;
	private String regdate;
	private int mileage;
	private int black;
	
	public Member() {}

	public Member(String id , String passwd ,String name ,String email,String phone,
			 String image ,String regdate,int mileage, int black ) {
		
		this.id=id;
		this.passwd=passwd;
		this.name=name;
		this.email=email;
		this.phone=phone;
		this.image=image;
		this.regdate=regdate;
		this.mileage=mileage;
		this.black=black;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public int getBlack() {
		return black;
	}

	public void setBlack(int black) {
		this.black = black;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", passwd=" + passwd + ", name=" + name + ", email=" + email + ", phone=" + phone
				+ ", image=" + image + ", regdate=" + regdate + ", mileage=" + mileage + ", black=" + black + "]";
	}

}

