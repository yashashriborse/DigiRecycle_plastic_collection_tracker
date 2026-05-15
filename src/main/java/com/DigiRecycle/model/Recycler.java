package com.DigiRecycle.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name = "recycler")
public class Recycler {
	
   
    @Id
    private String recContact;
    private String recName;
    private String recZone;
    private String recEmail;
    private String recPassword;
	/**
	 * @return the recName
	 */
	/**
	 * @return the recName
	 */
	public String getRecName() {
		return recName;
	}
	/**
	 * @param recName the recName to set
	 */
	public void setRecName(String recName) {
		this.recName = recName;
	}
	/**
	 * @return the recContact
	 */
	public String getRecContact() {
		return recContact;
	}
	/**
	 * @param recContact the recContact to set
	 */
	public void setRecContact(String recContact) {
		this.recContact = recContact;
	}
	/**
	 * @return the recZone
	 */
	public String getRecZone() {
		return recZone;
	}
	/**
	 * @param recZone the recZone to set
	 */
	public void setRecZone(String recZone) {
		this.recZone = recZone;
	}
	/**
	 * @return the recEmail
	 */
	public String getRecEmail() {
		return recEmail;
	}
	/**
	 * @param recEmail the recEmail to set
	 */
	public void setRecEmail(String recEmail) {
		this.recEmail = recEmail;
	}
	/**
	 * @return the recPassword
	 */
	public String getRecPassword() {
		return recPassword;
	}
	/**
	 * @param recPassword the recPassword to set
	 */
	public void setRecPassword(String recPassword) {
		this.recPassword = recPassword;
	}
	public Recycler(String recName, String recContact, String recZone, String recEmail, String recPassword) {
		super();
		this.recName = recName;
		this.recContact = recContact;
		this.recZone = recZone;
		this.recEmail = recEmail;
		this.recPassword = recPassword;
	}
	public Recycler() {
		super();
		// TODO Auto-generated constructor stub
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Recycler [recName=" + recName + ", recContact=" + recContact + ", recZone=" + recZone + ", recEmail="
				+ recEmail + ", recPassword=" + recPassword + "]";
	}
    
    
    
}