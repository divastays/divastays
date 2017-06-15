package com.smsone.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smsone.model.Room;
@Repository
public class RoomDAOImpl implements RoomDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public void saveRoom(Room room) {
		Session session=sessionFactory.openSession();
		session.save(room);
		session.close();
	}

}
