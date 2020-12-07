package com.itheima.service;
import com.itheima.po.Customer;

import java.util.List;

public interface CustomerService {
	public Customer findCustomerByStudent(Integer student_num);
	
	public List<Customer> findAll();

	public int add(Customer student);

	public int change(Customer student);

	public boolean deleteByStudent(Integer student_num);
}
