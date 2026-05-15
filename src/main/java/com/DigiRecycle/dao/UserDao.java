package com.DigiRecycle.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.DigiRecycle.model.CollectionLog;
import com.DigiRecycle.model.Recycler;
import com.DigiRecycle.model.User;

@Component
public class UserDao {
	
	@Autowired
    private HibernateTemplate hibernateTemplate;

	/**
	 * @return the hibernateTemplate
	 */
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	/**
	 * @param hibernateTemplate the hibernateTemplate to set
	 */
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public UserDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	public UserDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "UserDao [hibernateTemplate=" + hibernateTemplate + "]";
	}
    
    @Transactional
	 public void addUser(User obj)
	    {
	    	 hibernateTemplate.save(obj);
	    
	    }
    
    @Transactional
    public void deleteUser(String name) {
        User obj = hibernateTemplate.get(User.class, name);
        if (obj != null) {
            hibernateTemplate.delete(obj);
        }
    }
    
    @Transactional
    public void updateUser(User obj) {
        hibernateTemplate.update(obj);
    }
    
    public User getUser(String name) {
        return hibernateTemplate.get(User.class, name);
    }

    public List<User> getAllUsers() {
        return hibernateTemplate.loadAll(User.class);
    }
    
   
    
    
    public User getUserByContact(String uContact) {
	    return hibernateTemplate.get(User.class, uContact);
	}
    
    
    




}
