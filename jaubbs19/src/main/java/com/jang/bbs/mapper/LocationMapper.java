package com.jang.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jang.bbs.model.Location;

@Mapper
public interface LocationMapper {
	
	List<Location> getLocation(Location location);
	
	int insertLoc(Location location);

	List<Location> getuserlistLoc(Location location);
}
