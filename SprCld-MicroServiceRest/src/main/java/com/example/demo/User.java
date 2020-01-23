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
    private Integer enabled;
    @Column(name = "account_expired")
    private Integer accountExpired;
    @Column(name = "credentials_expired")
    private Integer credentialsExpired;
    @Column(name = "account_Locked")
    private Integer accountLocked;
    
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
	public Integer getEnabled() {
		return enabled;
	}
	public void setEnabled(Integer enabled) {
		this.enabled = enabled;
	}
	public Integer getAccountExpired() {
		return accountExpired;
	}
	public void setAccountExpired(Integer accountExpired) {
		this.accountExpired = accountExpired;
	}
	public Integer getCredentialsExpired() {
		return credentialsExpired;
	}
	public void setCredentialsExpired(Integer credentialsExpired) {
		this.credentialsExpired = credentialsExpired;
	}
	public Integer getAccountLocked() {
		return accountLocked;
	}
	public void setAccountLocked(Integer accountLocked) {
		this.accountLocked = accountLocked;
	}

}
