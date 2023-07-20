package com.soldesk.entity.blockchain;

import java.util.List;

public class Blockchain {
    private List<Block> chain;
    private List<Transaction> pendingTransactions;
    private final int difficulty = 4;
    private final double miningReward = 100.0;
    
    public Blockchain() {
		// TODO Auto-generated constructor stub
	}

	public Blockchain(List<Block> chain, List<Transaction> pendingTransactions) {
		super();
		this.chain = chain;
		this.pendingTransactions = pendingTransactions;
	}

	public List<Block> getChain() {
		return chain;
	}

	public void setChain(List<Block> chain) {
		this.chain = chain;
	}

	public List<Transaction> getPendingTransactions() {
		return pendingTransactions;
	}

	public void setPendingTransactions(List<Transaction> pendingTransactions) {
		this.pendingTransactions = pendingTransactions;
	}

	public int getDifficulty() {
		return difficulty;
	}

	public double getMiningReward() {
		return miningReward;
	}
    
    
}
