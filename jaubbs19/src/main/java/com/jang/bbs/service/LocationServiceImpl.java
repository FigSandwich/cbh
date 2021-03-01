package com.jang.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.bbs.mapper.LocationMapper;
import com.jang.bbs.model.Location;

@Service(value = "locationService")
public class LocationServiceImpl implements LocationService  {
	
	@Autowired
	private LocationMapper locationMapper;

	
	@Override
	public List<Location> getLocation(Location location) {
		// TODO Auto-generated method stub
		return locationMapper.getLocation(location);
	}



	@Override
	public int insertLoc(Location location) {
		// TODO Auto-generated method stub
		return locationMapper.insertLoc(location);
	}


	public LocationMapper getLocationMapper() {
		return locationMapper;
	}



	@Override
	public List<Location> getuserlistLoc(Location location) {
		// TODO Auto-generated method stub
		return locationMapper.getuserlistLoc(location);
	}


}
	

