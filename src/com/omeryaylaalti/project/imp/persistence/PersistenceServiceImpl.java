package com.omeryaylaalti.project.imp.persistence;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.omeryaylaalti.project.hibernate.util.HibernateUtil;
import com.omeryaylaalti.project.service.PersistenceService;

public class PersistenceServiceImpl implements PersistenceService
{
	@Override
    public <T> T select(Class<T> clazz, int id) 
    {
        Session session = openSession();
         
        try
        {
            return (T) session.get(clazz, id);
        }
        finally
        {
            session.close();
        }
    }
 
    @Override
    public void save(Object entity) 
    {
        Session session = openSession();
        Transaction transaction = session.beginTransaction();
         
        try
        {
            session.save( entity );
            transaction.commit();
        }
        catch(Exception ex)
        {
            System.err.println("Exception while persisting:"+ex.getMessage());
            transaction.rollback();
        }
        finally
        {
            session.close();
        }
         
    }
     
    @Override
    public void update(Object entity)
    {
        Session session = openSession();
        Transaction transaction = session.beginTransaction();
         
        try
        {
            session.update( entity );
            transaction.commit();
        }
        catch(Exception ex)
        {
            System.err.println("Exception while updating:"+ex.getMessage());
            transaction.rollback();
        }
        finally
        {
            session.close();
        }       
    }
     
    @Override
    public void delete(Object entity)
    {
        Session session = openSession();
        Transaction transaction = session.beginTransaction();
         
        try
        {
            session.delete(entity);
            transaction.commit();
        }
        catch(Exception ex)
        {
            System.err.println("Exception while deleting:"+ex.getMessage());
            transaction.rollback();
        }
        finally
        {
            session.close();
        }   
    }
 
     
 
    public <T> List<T> getAllEntities(Class<T> clazz) 
    {
        Session session = openSession();
        Criteria criteria = session.createCriteria( clazz );
         
        try
        {
            return criteria.list();
        }
        finally{
            session.close();
        }
    }
 
     private Session openSession() 
    {
        Session session = HibernateUtil.openSession();
        return session;
    }

	@Override
	public <T> List<T> getByNamedQuery(String namedQuery, T entity) {
		// TODO Auto-generated method stub
		return null;
	}

}
