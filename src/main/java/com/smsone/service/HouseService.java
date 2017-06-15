package com.smsone.service;

import java.util.List;

import com.smsone.model.House;


public interface HouseService {
	public void saveHouse(House house);
	public List<House> list(Integer offset, Integer maxResults);
	public Long count();
	public House getHouse(House house);
	public List<House> listHouse(House house,Integer offset, Integer maxResults);
	public List<House> listHouseByFilter(House house,Integer offset, Integer maxResults);
	public List<House> listHouseByFilters(House house,Integer offset, Integer maxResults);
	public boolean checkAadharNumber(House house);
	public Long countByFilter(House house);

}
