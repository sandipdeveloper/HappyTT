package com.asu.ss.secure_banking_system.service;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.asu.ss.secure_banking_system.model.RequestEntity;
import com.asu.ss.secure_banking_system.model.RoleEntity;
import com.asu.ss.secure_banking_system.model.RoleRequestEntity;
import com.asu.ss.secure_banking_system.model.SessionFactoryUtil;
import com.asu.ss.secure_banking_system.model.UserEntity;


public class RequestRoleService {

	public List<UserEntity> getAllInternalUsers()
	{
		try{
		SessionFactory sessionFactory = SessionFactoryUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		String hql = "FROM UserEntity UE";
		Query query = session.createQuery(hql);
		List<UserEntity> requestList = query.list();
		
		//check if the request came from higher level user than the user to be assigned
		
		//check if atleast two other similar request came from same level user
		
		session.getTransaction().commit();
		session.close();
		return requestList;
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return null;
		
	}
	public void createRoleRequest(RoleEntity role, UserEntity user)
	{
		try{
		SessionFactory sessionFactory = SessionFactoryUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();		
		RoleRequestEntity re = new RoleRequestEntity();
		UserEntity ue = new UserEntity();
		ue.setUserID("abcdeew");
		re.setRequestedBy(ue);
		re.setRequestID(111);
		re.setRequestTime(new Date());
		re.setRole(role);
		re.setUser(user);
		session.save(re);
		session.getTransaction().commit();
		session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
	}
	
	public List<RoleEntity> getAllRoles()
	{
		try{
		SessionFactory sessionFactory = SessionFactoryUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		String hql = "FROM RoleEntity RE";
		Query query = session.createQuery(hql);
		List<RoleEntity> requestList = query.list();		
		session.getTransaction().commit();
		session.close();
		return requestList;
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return null;
		
	}	
}
