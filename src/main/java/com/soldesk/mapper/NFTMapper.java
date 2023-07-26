package com.soldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.soldesk.entity.nft.NFT;

@Mapper
public interface NFTMapper {
	public abstract int insertNFT(NFT nft);
	public abstract List<NFT> getNFTList(NFT nft);
	public abstract NFT getNFTDetail(NFT nft);
	public abstract int countNFT();
	public abstract int setNFTNo();
	public abstract NFT checkNFTHash(NFT nft);
}
