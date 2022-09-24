package com.shelly.springMVC_Hibernate.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shelly.springMVC_Hibernate.Entity.Question;

@Component
public class Questionsdao {
	
	@Autowired
	SessionFactory sf;
	
	@Transactional
	public void saveQuestions(Question q)
	{
		
		Session session =sf.getCurrentSession();
		session.persist("Question", q);
		System.out.println("Questions persisted in database");
		
	}

	@Transactional
	public List<Question> getTestQuestions() {
		
		List<Question> ls;
		Session session = sf.getCurrentSession();
	    TypedQuery<Question> q= session.createQuery("From Question",Question.class);
		ls =q.getResultList();
		System.out.println("The result is" + ls);
		return ls;
	}

}
