package com.itheima.service.impl;

import com.itheima.dao.CusListDao;
import com.itheima.dao.CustomerDao;
import com.itheima.po.Customer;
import com.itheima.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerDao customerDao;
    @Autowired
    private CusListDao cuslistDao;

    @Override
    public Customer findCustomerByStudent(Integer student_num) {
        return this.customerDao.findCustomerByStudent(student_num);
    }

    @Override
    public List<Customer> findAll() {
        return this.cuslistDao.findAll();
        //return customerService.findAll();
    }

    @Override
    public int add(Customer student) {
        System.out.println(student.toString());
        return this.customerDao.add(student);
    }

    @Override
    public boolean deleteByStudent(Integer student_num) {
        return this.customerDao.delete(student_num);
    }

    @Override
    public int change(Customer student) {
        return this.customerDao.change(student);
    }
}
