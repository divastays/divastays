package com.smsone.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.smsone.model.House;
import com.smsone.model.User;
@Repository
@Transactional
public class HouseDAOImpl implements HouseDAO {
	@Autowired
	private SessionFactory sessionFactory;
	//save house
	public void saveHouse(House house) {
		Session session=sessionFactory.openSession();
		session.save(house);
		session.close();
	}
	//getting house
	@SuppressWarnings("unchecked")
	@Transactional
	public List<House> list(Integer offset, Integer maxResults) {
		return sessionFactory.openSession()
				.createCriteria(House.class)
				.setFirstResult(offset!=null?offset:0)
				.setMaxResults(maxResults!=null?maxResults:10)
				.list();
	}
	
	public House getHouse(House house) {
		Session session=sessionFactory.openSession();
		House loadHouse=(House)session.load(House.class,house.gethId());
		return loadHouse;
	}
	public List<House> listHouse(House house, Integer offset, Integer maxResults) {
		Session session=sessionFactory.openSession();
		Criteria criteria = session.createCriteria(House.class);
		criteria.setFirstResult(offset!=null?offset:0);
		criteria.setMaxResults(maxResults!=null?maxResults:10);
		criteria.add(Restrictions.like("address","%"+house.getAddress()+"%"));
		@SuppressWarnings("unchecked")
		List<House> house1 = criteria.list();
		
		return house1;
	}
	public boolean checkAadharNumber(House house) {
			Session session=sessionFactory.openSession();
			Criteria crit=session.createCriteria(House.class);
			Criterion c1=Restrictions.eq("aadharNumber",house.getAadharNumber());
			crit.add(c1);
			@SuppressWarnings("unchecked")
			List<User> list=crit.list();
			if(list.isEmpty())
			{
				return false;
			}
			else
			{
			return true;
			}
		}
	public List<House> listHouseByFilter(House house, Integer offset, Integer maxResults) {
		Criterion c3=null;
		Session session=sessionFactory.openSession();
		Criteria criteria = session.createCriteria(House.class);
		criteria.setFirstResult(offset!=null?offset:0);
		criteria.setMaxResults(maxResults!=null?maxResults:10);
		//Criterion c1=Restrictions.eq("address",house.getAddress());
		//Criterion c2=Restrictions.eq("accomodation",house.getAccomodation());
		if(house.getRent()==1000)
		{
		 c3=Restrictions.le("rent",(double)1000);
		}
		else if(house.getRent()==1500)
		{
			Criterion c8=Restrictions.ge("rent",(double)1000);
			Criterion c9=Restrictions.le("rent",(double)2000);
			 c3=Restrictions.and(c8,c9);
		}
		else if(house.getRent()==2500)
		{
			Criterion c8=Restrictions.ge("rent",(double)2000);
			Criterion c9=Restrictions.le("rent",(double)3000);
			 c3=Restrictions.and(c8,c9);
		}
		else if(house.getRent()==3000)
		{
		 c3=Restrictions.ge("rent",(double)3000);
		}
		else if(house.getRent()==100)
		{
			c3=Restrictions.ge("rent",(double)100);
		}
		Criterion c4=Restrictions.eq("foodPreference",house.getFoodPreference());
		Criterion c5=Restrictions.and(c4,c3);
		criteria.add(c5);
		@SuppressWarnings("unchecked")
		List<House> house1 = criteria.list();
		return house1;
	}
	
	//counting house
		public Long count(){
			return (Long)sessionFactory.openSession()
					.createCriteria(House.class)
					.setProjection(Projections.rowCount())
					.uniqueResult();
		}
		public Long countByFilter(House house) {
			Session session=sessionFactory.openSession();
			Query query = session.createQuery(
			        "select count(*) from House h where h.address=:address");
			query.setString("address",house.getAddress());
			Long count = (Long)query.uniqueResult();
			return count;
		}
		public Long countAllFilter(House house) {
			Session session=sessionFactory.openSession();
			Query query = session.createQuery(
			        "select count(*) from House h where h.address=:address and h.accomodation=:accomodation and h.foodPreference=:foodPreference");
			query.setString("address",house.getAddress());
			//query.setString("accomodation",house.getAccomodation());
			query.setString("foodPreference",house.getFoodPreference());
			Long count = (Long)query.uniqueResult();
			return count;
		}
		public List<House> listHouseByFilters(House house, Integer offset, Integer maxResults) {
			Session session=sessionFactory.openSession();
			Criteria criteria = session.createCriteria(House.class);
			criteria.setFirstResult(offset!=null?offset:0);
			criteria.setMaxResults(maxResults!=null?maxResults:10);
			criteria.add(Restrictions.like("foodPreference","%"+house.getFoodPreference()+"%"));
			@SuppressWarnings("unchecked")
			List<House> house1 = criteria.list();
			
			return house1;
		}
		
		
}
