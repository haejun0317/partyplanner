package kr.co.partyplanner.reply.domain;

public class Reply {
 
	private int replyNum;
	private int partyNum;
 	private String id;
	private String contents;
	private int groupNo;
	private String regdate;
	private int orderNum;
	
	public Reply() {}

	public Reply(int replyNum, int partyNum, String id, String contents, int groupNo, String regdate, int orderNum) {
		super();
		this.replyNum = replyNum;
		this.partyNum = partyNum;
		this.id = id;
		this.contents = contents;
		this.groupNo = groupNo;
		this.regdate = regdate;
		this.orderNum = orderNum;
	}

	public int getReplyNum() {
		return replyNum;
	}

	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}

	public int getPartyNum() {
		return partyNum;
	}

	public void setPartyNum(int partyNum) {
		this.partyNum = partyNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	@Override
	public String toString() {
		return "Reply [replyNum=" + replyNum + ", partyNum=" + partyNum + ", id=" + id + ", contents=" + contents
				+ ", groupNo=" + groupNo + ", regdate=" + regdate + ", orderNum=" + orderNum + "]";
	}

	

}

