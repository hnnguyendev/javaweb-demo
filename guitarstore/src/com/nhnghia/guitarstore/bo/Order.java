package com.nhnghia.guitarstore.bo;

public class Order {
	private int orderID;
	private int guitarID;
	private int userID;

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public int getGuitarID() {
		return guitarID;
	}

	public void setGuitarID(int guitarID) {
		this.guitarID = guitarID;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

}
