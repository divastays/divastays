package com.smsone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smsone.dao.HouseDAO;
import com.smsone.model.House;

@Service
public class HouseServiceImpl implements HouseService {
	@Autowired
	HouseDAO houseDAO;
	public void saveHouse(House house)
   	{
		houseDAO.saveHouse(house);
	}
	public List<House> list(Integer offset, Integer maxResults) {
		return houseDAO.list(offset, maxResults);
	}
	public Long count() {
		return houseDAO.count();
	}
	public House getHouse(House house) {
		return houseDAO.getHouse(house);
	}
	public List<House> listHouse(House house, Integer offset, Integer maxResults) {
		return houseDAO.listHouse(house,offset, maxResults);
	}
	public boolean checkAadharNumber(House house) {
		return houseDAO.checkAadharNumber(house);
	}
	public List<House> listHouseByFilter(House house, Integer offset, Integer maxResults) {
		return houseDAO.listHouseByFilter(house, offset, maxResults);
	}
	public Long countByFilter(House house) {
		return houseDAO.countByFilter(house);
	}
	public List<House> listHouseByFilters(House house, Integer offset, Integer maxResults) {
		return houseDAO.listHouseByFilters(house, offset, maxResults);
	}
}
