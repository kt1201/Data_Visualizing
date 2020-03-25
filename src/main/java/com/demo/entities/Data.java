package com.demo.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "sample")
@Entity
public class Data implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	public Date TIME;
	public double one;
	public double two;
	public double three;
	public double four;
	public double five;
	
	public Date getTIME() {
		return TIME;
	}
	public void setTIME(Date tIME) {
		TIME = tIME;
	}
	public double getOne() {
		return one;
	}
	public void setOne(double one) {
		this.one = one;
	}
	public double getTwo() {
		return two;
	}
	public void setTwo(double two) {
		this.two = two;
	}
	public double getThree() {
		return three;
	}
	public void setThree(double three) {
		this.three = three;
	}
	public double getFour() {
		return four;
	}
	public void setFour(double four) {
		this.four = four;
	}
	public double getFive() {
		return five;
	}
	public void setFive(double five) {
		this.five = five;
	}
	
	
}
