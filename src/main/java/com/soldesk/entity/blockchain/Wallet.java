package com.soldesk.entity.blockchain;

public class Wallet {
    private String publicKey;
    private String privateKey;
    private String walletAddress;
    
    public Wallet() {
		// TODO Auto-generated constructor stub
	}

	public Wallet(String publicKey, String privateKey, String walletAddress) {
		super();
		this.publicKey = publicKey;
		this.privateKey = privateKey;
		this.walletAddress = walletAddress;
	}

	public String getPublicKey() {
		return publicKey;
	}

	public void setPublicKey(String publicKey) {
		this.publicKey = publicKey;
	}

	public String getPrivateKey() {
		return privateKey;
	}

	public void setPrivateKey(String privateKey) {
		this.privateKey = privateKey;
	}

	public String getWalletAddress() {
		return walletAddress;
	}

	public void setWalletAddress(String walletAddress) {
		this.walletAddress = walletAddress;
	}
    
    
}
