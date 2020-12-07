package com.itheima.dao;
import com.itheima.po.Customer;

public interface CustomerDao {
	public Customer findCustomerByStudent(Integer student_num);

	public int add(Customer student);

	public int change(Customer student);

	public boolean delete(Integer student_num);
}
