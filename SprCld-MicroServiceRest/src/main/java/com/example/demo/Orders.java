package com.example.demo;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Orders {

	@Id
    @GeneratedValue
    @Column(name = "id")
    private Integer id;
    @Column(name = "description")
    private String description;
    @Column(name = "userid")
    private String userid;
    @Column(name = "date")
    private LocalDate date;
    @Column(name = "time")
    private LocalTime time;
    @Column(name = "OTP")
    private Integer OTP;
    @Column(name = "comments")
    private String comments;
    @Column(name = "status")
    private String status;
    
    public Integer getOTP() {
		return OTP;
	}

	public void setOTP(Integer oTP) {
		OTP = oTP;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
    public Orders() {
		super();
	}
    
    public Orders(OrderStatus orderStatus) {
		super();
		this.setId(orderStatus.getId());
		this.setStatus(orderStatus.getStatus());
		this.setDate(orderStatus.getDate());
	}
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public LocalTime getTime() {
		return time;
	}
	public void setTime(LocalTime time) {
		this.time = time;
	}
}
