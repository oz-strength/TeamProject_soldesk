package com.soldesk.entity.blockchain;

public class Transaction {
    private String sender;
    private String recipient;
    private double amount;
    
    public Transaction() {
		// TODO Auto-generated constructor stub
	}

	public Transaction(String sender, String recipient, double amount) {
		super();
		this.sender = sender;
		this.recipient = recipient;
		this.amount = amount;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
    
    
}
