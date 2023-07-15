package com.soldesk.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.soldesk.entity.NftPicture;

@Mapper
public interface AdminMapper {

	public abstract void nftPhotoUpdate(NftPicture nft);

	public abstract String getNftPhoto();
	
}
