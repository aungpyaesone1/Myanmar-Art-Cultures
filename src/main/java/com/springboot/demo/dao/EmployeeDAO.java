package com.springboot.demo.dao;

import java.util.ArrayList;
import java.util.List;

import com.springboot.demo.db.DBFactory;
import com.springboot.demo.db.Emp;
import com.springboot.demo.model.Employee;

public class EmployeeDAO {
	private DBFactory dbFactory;
	
	private final String[] columns1 = new String[] {Emp.empId, Emp.name, Emp.address, Emp.contactNum, Emp.email, Emp.salary, Emp.degree};
	private final String[] columns2 = new String[] {Emp.name, Emp.address, Emp.contactNum, Emp.email, Emp.salary, Emp.degree};
	
	public EmployeeDAO() {
		dbFactory = new DBFactory();
	}

	public Employee readEmployee(int empId) {	
		String condition = Emp.empId+"="+empId;
		
		Employee emp = Employee.parse(columns1, dbFactory.selectObject(Emp.table, columns1, condition));
		return emp;
	}
	
	public List<Employee> readEmployees() {
		List<Employee> emps = new ArrayList<Employee>();
		
		List<String[]> data = dbFactory.selectObjectList(Emp.table, columns1, "true");
		for(String[] d : data) {
			emps.add(Employee.parse(columns1, d));
		}
		
		return emps;
	}
	
	public boolean createEmployee(Employee emp) {
		Object[] data = new Object[] {emp.getName(), emp.getAddress(), emp.getContactNumber(), emp.getEmail(), emp.getSalary(), emp.getSalary()};
		
		return dbFactory.insert(Emp.table, columns2, data);
	}
	
	public boolean updateEmployee(Employee emp) {
		Object[] data = new Object[] {emp.getName(), emp.getAddress(), emp.getContactNumber(), emp.getEmail(), emp.getSalary(), emp.getSalary()};
		String condition = Emp.empId+"="+emp.getEmpId();
		
		return dbFactory.update(Emp.table, columns2, data, condition);
	}
	
	public boolean deleteEmployee(int empId) {
		String condition = Emp.empId+"="+empId;
		
		return dbFactory.delete(Emp.table, condition);
	}

}
