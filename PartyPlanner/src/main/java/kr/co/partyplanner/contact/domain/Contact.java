package kr.co.partyplanner.contact.domain;

public class Contact {
	private int num;
	private String name;
	private String email;
	private String message;
	private String subject;
	
	
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		return "Contact [num=" + num + ", name=" + name + ", email=" + email + ", message=" + message + ", subject="
				+ subject + "]";
	}
	
	
	
}
