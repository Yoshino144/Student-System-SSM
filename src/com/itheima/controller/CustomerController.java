package com.itheima.controller;

import com.itheima.po.Customer;
import com.itheima.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/findCustomerByStudent")
	public String findCustomerById(Integer id,Model model) {
		Customer customer = customerService.findCustomerByStudent(id);
		model.addAttribute("customer", customer);
		return "pp";
	}

	@RequestMapping("/delete")
	public String deleteById(Integer id,Model model) {
		boolean delete = customerService.deleteByStudent(id);
		model.addAttribute("delete", delete);
		return "pp";
	}
	
	@RequestMapping("/findAll")
	public String findAll(Model model) {
		List<Customer> cl =  customerService.findAll();
		model.addAttribute("all", cl);
		return "all";
	}


	@RequestMapping("/addStudent")
	public String addStudent(
			String student_num,
			String name,
			String phone_number,
			String sex,
			String year,
			String college_id,
			String major_id,
			String class_id,Model model) {

		System.out.print("con:"+name);
		Customer customer = new Customer();
		customer.setStudent_num(Integer.parseInt(student_num));
		customer.setName(name);
		customer.setMajor_id(major_id);
		customer.setSex(sex);
		customer.setYear(year);
		customer.setClass_id(class_id);
		customer.setCollege_id(college_id);
		customer.setPhone_number(phone_number);

		int msg = customerService.add(customer);
		model.addAttribute("addStudent", msg);
		return "pp";
	}

	@RequestMapping("/change")
	public String change(
			String student_num,
			String name,
			String phone_number,
			String sex,
			String year,
			String college_id,
			String major_id,
			String class_id,Model model) {

		Customer customer = new Customer();
		customer.setStudent_num(Integer.parseInt(student_num));
		customer.setName(name);
		customer.setMajor_id(major_id);
		customer.setSex(sex);
		customer.setYear(year);
		customer.setClass_id(class_id);
		customer.setCollege_id(college_id);
		customer.setPhone_number(phone_number);

		int msg = customerService.change(customer);
		model.addAttribute("change", msg);
		return "pp";
	}
}
