
package com.DigiRecycle.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.DigiRecycle.model.CollectionLog;
import com.DigiRecycle.model.Recycler;

@Component
public class RecyclerDao {
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

		public RecyclerDao(HibernateTemplate hibernateTemplate) {
			super();
			this.hibernateTemplate = hibernateTemplate;
		}

		public RecyclerDao() {
			super();
			// TODO Auto-generated constructor stub
		}

		/* (non-Javadoc)
		 * @see java.lang.Object#toString()
		 */
		@Override
		public String toString() {
			return "RecyclerDao [hibernateTemplate=" + hibernateTemplate + "]";
		}
	      
	     @Transactional
		 public void addRecycler(Recycler obj)
		    {
		    	 hibernateTemplate.save(obj);
		    
		    }
	     
	     @Transactional
	     public void deleteRecycler(String recContact) {
	         Recycler obj = hibernateTemplate.get(Recycler.class, recContact);
	         if (obj != null) {
	             hibernateTemplate.delete(obj);
	         }
	     }
	     
	     


	     
	     @Transactional
	     public void updateRecycler(Recycler obj) {
	         hibernateTemplate.update(obj);
	     }
	     
	     public Recycler getRecycler(String name) {
	         return hibernateTemplate.get(Recycler.class, name);
	     }
	     
	     public Recycler getRecyclerByContact(String recContact) {
	    	    return hibernateTemplate.get(Recycler.class, recContact);
	    	}
	    

	     public List<Recycler> getAllRecyclers() {
	         return hibernateTemplate.loadAll(Recycler.class);
	     }
	     
	     
	    /* public Recycler getAnyAvailableRecycler() {
	    	    List<Recycler> list = (List<Recycler>) hibernateTemplate.find("from Recycler");
	    	    if (!list.isEmpty()) {
	    	        return list.get(0); // Return first recycler for now
	    	    }
	    	    return null; // Or throw an error if no recycler exists
	    	}*/
	     
	     public Recycler getAnyAvailableRecycler() {
	    	    List<Recycler> recyclers = (List<Recycler>) hibernateTemplate.loadAll(Recycler.class);
	    	    if (!recyclers.isEmpty()) {
	    	        return recyclers.get(0); // You can implement random selection later
	    	    }
	    	    return null;
	    	}
	     
	  // Fetch requests assigned to recycler by their contact
	     public List<CollectionLog> getRequestsByRecyclerContact(String recContact) {
	         String hql = "from CollectionLog where recycler.recContact = :recContact";
	         return (List<CollectionLog>) hibernateTemplate.findByNamedParam(hql, "recContact", recContact);
	     }

	     // Get request by ID
	     public CollectionLog getRequestById(int id) {
	         return hibernateTemplate.get(CollectionLog.class, id);
	     }

	     // Update request status
	     public void updateRequest(CollectionLog log) {
	         hibernateTemplate.update(log);
	     }
	     
	     public List<CollectionLog> getAllRequests() {
	         return (List<CollectionLog>) hibernateTemplate.loadAll(CollectionLog.class);
	     }
	 }

	     

	     


	

	
	
	


