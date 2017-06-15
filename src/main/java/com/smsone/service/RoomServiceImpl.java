package com.smsone.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smsone.dao.RoomDAO;
import com.smsone.model.Room;
@Service
public class RoomServiceImpl implements RoomService {
	@Autowired
	RoomDAO roomDAO;

	public void saveRoom(Room room) {
		roomDAO.saveRoom(room);
	}

}
