package kr.co.partyplanner.partyjoin.domain;

public class PartyJoin {
 
	private String id;
	private int num;
	private String regdate;
	private String approve;
	
	public PartyJoin() {}

	public PartyJoin(String id , int num ,String regdate ,String approve ) {
		
		this.id=id;
		this.num=num;
		this.regdate=regdate;
		this.approve=approve;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getApprove() {
		return approve;
	}

	public void setApprove(String approve) {
		this.approve = approve;
	}

	@Override
	public String toString() {
		return "PartyJoin [id=" + id + ", num=" + num + ", regdate=" + regdate + ", approve=" + approve + "]";
	}
	
	
}

