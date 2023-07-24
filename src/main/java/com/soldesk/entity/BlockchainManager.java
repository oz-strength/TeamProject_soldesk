package com.soldesk.entity;

import java.nio.charset.StandardCharsets;



import java.security.MessageDigest;

import org.web3j.crypto.Credentials;
import org.web3j.crypto.Keys;

//import org.web3j.crypto.ECKeyPair;
//import org.web3j.crypto.Keys;

import com.soldesk.entity.blockchain.Wallet;

public class BlockchainManager {
	public static String sha256Hash(String data) throws Exception {
		MessageDigest digest = MessageDigest.getInstance("SHA-256");
		byte[] encodedHash = digest.digest(data.getBytes(StandardCharsets.UTF_8));
		StringBuilder hexString = new StringBuilder();

		for (byte b : encodedHash) {
			String hex = Integer.toHexString(0xff & b);
			if (hex.length() == 1) {
				hexString.append('0');
			}
			hexString.append(hex);
		}

		return hexString.toString();
	}
	
	public static Wallet createWallet() {
		Wallet w = null;
		try {
			Credentials ct = Credentials.create(Keys.createEcKeyPair()); 
			
			w = new Wallet();
			w.setPublicKey(ct.getEcKeyPair().getPublicKey().toString(16));
			w.setPrivateKey(ct.getEcKeyPair().getPrivateKey().toString(16));
			w.setWalletAddress(ct.getAddress());
			
			return w;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
