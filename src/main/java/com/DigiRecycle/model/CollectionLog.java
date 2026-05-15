package com.DigiRecycle.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;



@Table(name = "collection_logs")
@Entity
@Component
public class CollectionLog {
	
	@Id
	private int id;
	
	@ManyToOne
	@JoinColumn(name="userContactId",referencedColumnName = "uContact")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="recyclerContactId",referencedColumnName = "recContact")
	private Recycler recycler;
	
	private String plasticType;
	
	private String quantity;
	
	private String requestdate;
	
	private String status;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return the recycler
	 */
	public Recycler getRecycler() {
		return recycler;
	}

	/**
	 * @param recycler the recycler to set
	 */
	public void setRecycler(Recycler recycler) {
		this.recycler = recycler;
	}

	/**
	 * @return the plasticType
	 */
	public String getPlasticType() {
		return plasticType;
	}

	/**
	 * @param plasticType the plasticType to set
	 */
	public void setPlasticType(String plasticType) {
		this.plasticType = plasticType;
	}

	/**
	 * @return the quantity
	 */
	public String getQuantity() {
		return quantity;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	/**
	 * @return the requestdate
	 */
	public String getRequestdate() {
		return requestdate;
	}

	/**
	 * @param requestdate the requestdate to set
	 */
	public void setRequestdate(String requestdate) {
		this.requestdate = requestdate;
	}

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	public CollectionLog(int id, User user, Recycler recycler, String plasticType, String quantity, String requestdate,
			String status) {
		super();
		this.id = id;
		this.user = user;
		this.recycler = recycler;
		this.plasticType = plasticType;
		this.quantity = quantity;
		this.requestdate = requestdate;
		this.status = status;
	}

	public CollectionLog() {
		super();
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "CollectionLog [id=" + id + ", user=" + user + ", recycler=" + recycler + ", plasticType=" + plasticType
				+ ", quantity=" + quantity + ", requestdate=" + requestdate + ", status=" + status + "]";
	}
	
	
	
	
}
