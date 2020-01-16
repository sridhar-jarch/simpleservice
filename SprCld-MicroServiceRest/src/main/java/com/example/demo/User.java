package com.example.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class User {

	@Id
    @GeneratedValue
    @Column(name = "id")
    private Integer id;
    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;
    @Column(name = "email")
    private String email;
    @Column(name = "enabled")
    private String enabled;
    @Column(name = "account_expired")
    private String accountExpired;
    @Column(name = "credentials_expired")
    private String credentialsExpired;
    @Column(name = "account_Locked")
    private String accountLocked;
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	public String getAccountExpired() {
		return accountExpired;
	}
	public void setAccountExpired(String accountExpired) {
		this.accountExpired = accountExpired;
	}
	public String getCredentialsExpired() {
		return credentialsExpired;
	}
	public void setCredentialsExpired(String credentialsExpired) {
		this.credentialsExpired = credentialsExpired;
	}
	public String getAccountLocked() {
		return accountLocked;
	}
	public void setAccountLocked(String accountLocked) {
		this.accountLocked = accountLocked;
	}

}
