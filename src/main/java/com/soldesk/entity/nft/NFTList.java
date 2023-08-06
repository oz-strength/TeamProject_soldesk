package com.soldesk.entity.nft;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class NFTList {
	private List<NFT> nft;

	public NFTList() {
		// TODO Auto-generated constructor stub
	}

	public NFTList(List<NFT> nft) {
		super();
		this.nft = nft;
	}

	public List<NFT> getNft() {
		return nft;
	}

	@XmlElement
	public void setNft(List<NFT> nft) {
		this.nft = nft;
	}
	
}
