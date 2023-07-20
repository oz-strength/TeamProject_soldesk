package com.soldesk.entity.blockchain;

import java.util.List;

public class Block {
    private String previousHash;
    private long timestamp;
    private List<Transaction> transactions;
    private int nonce;
    private String hash;
    
    public Block() {
		// TODO Auto-generated constructor stub
	}

	public Block(String previousHash, long timestamp, List<Transaction> transactions, int nonce, String hash) {
		super();
		this.previousHash = previousHash;
		this.timestamp = timestamp;
		this.transactions = transactions;
		this.nonce = nonce;
		this.hash = hash;
	}

	public String getPreviousHash() {
		return previousHash;
	}

	public void setPreviousHash(String previousHash) {
		this.previousHash = previousHash;
	}

	public long getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(long timestamp) {
		this.timestamp = timestamp;
	}

	public List<Transaction> getTransactions() {
		return transactions;
	}

	public void setTransactions(List<Transaction> transactions) {
		this.transactions = transactions;
	}

	public int getNonce() {
		return nonce;
	}

	public void setNonce(int nonce) {
		this.nonce = nonce;
	}

	public String getHash() {
		return hash;
	}

	public void setHash(String hash) {
		this.hash = hash;
	}
    
    
}
