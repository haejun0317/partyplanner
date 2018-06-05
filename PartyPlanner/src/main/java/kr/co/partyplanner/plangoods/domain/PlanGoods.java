package kr.co.partyplanner.plangoods.domain;

public class PlanGoods {
 
	private int planNum;
	private String goodsName;
	private int amount;
	
	public PlanGoods() {}

	public PlanGoods(int planNum, String goodsName, int amount) {
		super();
		this.planNum = planNum;
		this.goodsName = goodsName;
		this.amount = amount;
	}

	public int getPlanNum() {
		return planNum;
	}

	public void setPlanNum(int planNum) {
		this.planNum = planNum;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "PlanGoods [planNum=" + planNum + ", goodsName=" + goodsName + ", amount=" + amount + "]";
	}

	
	
}

