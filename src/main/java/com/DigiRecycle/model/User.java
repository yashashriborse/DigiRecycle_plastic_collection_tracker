package com.DigiRecycle.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name = "user")
public class User {
	

    @Id
    private String uContact;
    private String uName;
    private String uAddress;
    private String uEmail;
    private String uPassword;
	/**
	 * @return the uContact
	 */
	public String getuContact() {
		return uContact;
	}
	/**
	 * @param uContact the uContact to set
	 */
	public void setuContact(String uContact) {
		this.uContact = uContact;
	}
	/**
	 * @return the uName
	 */
	public String getuName() {
		return uName;
	}
	/**
	 * @param uName the uName to set
	 */
	public void setuName(String uName) {
		this.uName = uName;
	}
	/**
	 * @return the uAddress
	 */
	public String getuAddress() {
		return uAddress;
	}
	/**
	 * @param uAddress the uAddress to set
	 */
	public void setuAddress(String uAddress) {
		this.uAddress = uAddress;
	}
	/**
	 * @return the uEmail
	 */
	public String getuEmail() {
		return uEmail;
	}
	/**
	 * @param uEmail the uEmail to set
	 */
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	/**
	 * @return the uPassword
	 */
	public String getuPassword() {
		return uPassword;
	}
	/**
	 * @param uPassword the uPassword to set
	 */
	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}
	public User(String uContact, String uName, String uAddress, String uEmail, String uPassword) {
		super();
		this.uContact = uContact;
		this.uName = uName;
		this.uAddress = uAddress;
		this.uEmail = uEmail;
		this.uPassword = uPassword;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [uContact=" + uContact + ", uName=" + uName + ", uAddress=" + uAddress + ", uEmail=" + uEmail
				+ ", uPassword=" + uPassword + "]";
	}
    
    
}	