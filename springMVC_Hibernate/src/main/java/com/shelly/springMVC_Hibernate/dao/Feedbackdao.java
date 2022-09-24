package com.shelly.springMVC_Hibernate.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shelly.springMVC_Hibernate.Entity.Feedback;



@Component
public class Feedbackdao {
	
	@Autowired
	private SessionFactory sessionfactory;
	
	@Transactional
	public void addFeedback(Feedback fb) {
		System.out.println("in addFeedback " + fb);
		Session session = sessionfactory.getCurrentSession();
		System.out.println("session object is" + session);
		session.persist(fb);
	}
	
	@Transactional
	public List<Feedback> getFeedbacks() {
		System.out.println("in getFeedback " );
		Session session = sessionfactory.getCurrentSession();
		System.out.println("session object is" + session);
		Query<Feedback> q = session.createQuery("From Feedback");
		List<Feedback> fblist = (List<Feedback>)q.list();
		System.out.println(fblist);
		return fblist;
	}
	

}
