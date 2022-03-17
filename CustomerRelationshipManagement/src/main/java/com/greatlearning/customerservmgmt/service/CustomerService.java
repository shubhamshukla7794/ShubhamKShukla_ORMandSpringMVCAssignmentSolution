package com.greatlearning.customerservmgmt.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.greatlearning.customerservmgmt.entity.Customer;

@Service
public interface CustomerService {

	public List<Customer> findAll();
	
	public Customer findById(int id);
	
	public void save(Customer customer);
	
	public void deleteById(int id);
	
}
