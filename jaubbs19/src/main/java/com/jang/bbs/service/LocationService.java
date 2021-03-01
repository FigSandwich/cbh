package com.jang.bbs.service;

import java.util.List;

import com.jang.bbs.model.Location;

public interface LocationService {
	
	List<Location> getLocation(Location location);
	
	int insertLoc(Location location);
	
	List<Location> getuserlistLoc(Location location);
}
