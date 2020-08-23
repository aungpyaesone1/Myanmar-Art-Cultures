package com.springboot.demo.model;

import com.springboot.demo.db.Emp;

public class Employee {
	private int empId;
	private String name;
	private String address;
	private String contactNumber;
	private String email;
	private int salary;
	private String degree;
	
	public Employee() {
		
	}

	public Employee(String name, String address, String contactNumber, String email, int salary, String degree) {
		super();
		this.name = name;
		this.address = address;
		this.contactNumber = contactNumber;
		this.email = email;
		this.salary = salary;
		this.degree = degree;
	}

	public Employee(int empId, String name, String address, String contactNumber, String email, int salary,
			String degree) {
		super();
		this.empId = empId;
		this.name = name;
		this.address = address;
		this.contactNumber = contactNumber;
		this.email = email;
		this.salary = salary;
		this.degree = degree;
	}
	
	public static Employee parse(String[] fields, String[] values) {
		Employee employee = null;
		if(values != null) {
			employee = new Employee();
			for(int i=0; i<fields.length; i++) {
				String v = values[i];
				if(fields[i].equals(Emp.empId)) employee.empId = Integer.parseInt(v.trim());
				else if(fields[i].equals(Emp.name)) employee.name = v;
				else if(fields[i].equals(Emp.address)) employee.address = v;
				else if(fields[i].equals(Emp.contactNum)) employee.contactNumber = v;
				else if(fields[i].equals(Emp.email)) employee.email = v;
				else if(fields[i].equals(Emp.salary)) employee.salary = Integer.parseInt(v.trim());
				else if(fields[i].equals(Emp.degree)) employee.degree = v;
			}
		}
		return employee;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String toString() {
		return "{ id: "+empId+", name: "+name+", address: "+address+", contact_number: "+contactNumber+", email: "+email+", degree: "+degree+", salary: "+salary+" }";
	}

}
