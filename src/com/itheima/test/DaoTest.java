package com.itheima.test;

import com.itheima.dao.CusListDao;
import com.itheima.dao.CustomerDao;
import com.itheima.po.Customer;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class DaoTest {
    @Test
    public void findCustomerByIdDaoTest() {
        ApplicationContext act = new ClassPathXmlApplicationContext("applicationContext.xml");
        CustomerDao customerDao = (CustomerDao) act.getBean("customerDao");
        Customer customer = customerDao.findCustomerByStudent(123456);
        System.out.println(customer);
    }

    @Test
    public void findAll() {
        ApplicationContext act = new ClassPathXmlApplicationContext("applicationContext.xml");
        CusListDao cusListDao =(CusListDao) act.getBean("cusListDao");
        List<Customer> cusList = cusListDao.findAll();
        System.out.println(cusList);
    }

    @Test
    public void add() {
        ApplicationContext act = new ClassPathXmlApplicationContext("applicationContext.xml");
        CustomerDao customerDao =(CustomerDao) act.getBean("customerDao");
        Customer customer = new Customer();
        customer.setId(123);
        customer.setName("pcc");
        customer.setMajor_id("dcfgbhfc");
        customer.setSex("男");
        customer.setYear("5446");
        customer.setClass_id("fhddhf");
        customer.setCollege_id("fddfdfg");
        customer.setPhone_number("dfggdffdg");
        customerDao.add(customer);
    }

}
