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
public class CollectionLogDao {

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

    public CollectionLogDao(HibernateTemplate hibernateTemplate) {
        super();
        this.hibernateTemplate = hibernateTemplate;
    }

    public CollectionLogDao() {
        super();
    }

    @Transactional
    public void insertRequest(CollectionLog log) {
        hibernateTemplate.save(log);
    }

    public List<CollectionLog> getRequestsByStatus(String status) {
        return (List<CollectionLog>) hibernateTemplate.findByNamedParam(
            "from CollectionLog where status = :status",
            "status",
            status
        );
    }

    public List<CollectionLog> getRequestsByUser(User user) {
        return (List<CollectionLog>) hibernateTemplate.findByNamedParam(
            "from CollectionLog where user = :user",
            "user",
            user
        );
    }

    @Transactional
    public void updateRequest(CollectionLog log) {
        hibernateTemplate.update(log);
    }

    public CollectionLog getRequestById(int id) {
        return hibernateTemplate.get(CollectionLog.class, id);
    }

    public List<CollectionLog> getAllRequests() {
        return (List<CollectionLog>) hibernateTemplate.loadAll(CollectionLog.class);
    }

    public List<CollectionLog> getRequestsByRecycler(Recycler recycler) {
        return (List<CollectionLog>) hibernateTemplate.findByNamedParam(
            "from CollectionLog where recycler = :recycler",
            "recycler",
            recycler
        );
 
    }
    
    public List<CollectionLog> getRequestsByRecyclerContact(String recContact) {
        String hql = "from CollectionLog where recycler.recContact = :recContact";
        return (List<CollectionLog>) hibernateTemplate.findByNamedParam("from CollectionLog where recycler.recContact = :recContact", "recContact", recContact);
    }
    
    
    public List<CollectionLog> getRequestsByRecyclerAndStatus(String recyclerContact, String status) {
        return (List<CollectionLog>) hibernateTemplate.findByNamedParam(
            "from CollectionLog where recycler.recContact = :recContact and status = :status",
            new String[] {"recContact", "status"},
            new Object[] {recyclerContact, status}
        );
    }
    
    public List<CollectionLog> getRequestsByUser(int userId) {
        String hql = "FROM CollectionLog WHERE userContact.id = :userId ORDER BY requestDate DESC";
        return (List<CollectionLog>) hibernateTemplate.findByNamedParam(hql, "userId", userId);
    }
    
  

}
	      

	

   

    
    
   

