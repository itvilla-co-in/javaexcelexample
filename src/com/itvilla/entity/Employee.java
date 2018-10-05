package com.itvilla.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="employee")
public class Employee {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="empid")
	private String empId;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")	
	@Column(name="first_name")
	private String firstName;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	@Column(name="last_name")
	private String lastName;
	
	@NotNull(message="is required")
	@DateTimeFormat(pattern="dd/MM/yyyy")
	@Column(name="empdob")
	private Date empDob;
	
	@NotNull(message="is required")
	@Column(name="empprofileimg")
	private String empProfileimg;
	
	@NotNull(message="is required")
	@Column(name="empband")
	private String empBand;
	
	@NotNull(message="is required")
	@Column(name="emploc")
	private String empLoc;
	
	@NotNull(message="is required")
	@Column(name="emploccode")
	private String empLoccode;
	
	
	public Employee() {
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmpId() {
		return empId;
	}


	public void setEmpId(String empId) {
		this.empId = empId;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public Date getEmpDob() {
		return empDob;
	}


	public void setEmpDob(Date empDob) {
		this.empDob = empDob;
	}


	public String getEmpProfileimg() {
		return empProfileimg;
	}


	public void setEmpProfileimg(String empProfileimg) {
		this.empProfileimg = empProfileimg;
	}


	public String getEmpBand() {
		return empBand;
	}


	public void setEmpBand(String empBand) {
		this.empBand = empBand;
	}


	public String getEmpLoc() {
		return empLoc;
	}


	public void setEmpLoc(String empLoc) {
		this.empLoc = empLoc;
	}


	public String getEmpLoccode() {
		return empLoccode;
	}


	public void setEmpLoccode(String empLoccode) {
		this.empLoccode = empLoccode;
	}


	@Override
	public String toString() {
		return "Employee [id=" + id + ", empId=" + empId + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", empDob=" + empDob + ", empProfileimg=" + empProfileimg + ", empBand=" + empBand + ", empLoc="
				+ empLoc + ", empLoccode=" + empLoccode + "]";
	}

	
	
	
		
}





