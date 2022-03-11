package com.greatlearning.customerservmgmt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/customers")
public class CustomersController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/list")
	public String listCustomer(Model model) {

		List<Customer> customers = customerService.findAll();

		model.addAttribute("Customers", customers);

		return "list-customers";
	}

	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {

		Customer customer = new Customer();

		model.addAttribute("Customer", customer);

		return "customer-form";
	}

	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int id, Model model) {

		Customer customer = customerService.findById(id);

		model.addAttribute("Customer", customer);

		return "customer-form";
	}

	@PostMapping("/save")
	public String saveCustomer(@RequestParam("id") int id, @RequestParam("first_name") String first_name,
			@RequestParam("last_name") String last_name, @RequestParam("email") String email) {

		Customer customer;

		if (id != 0) {
			customer = customerService.findById(id);
			customer.setFirst_name(first_name);
			customer.setLast_name(last_name);
			customer.setEmail(email);

		} else {
			customer = new Customer(first_name, last_name, email);
		}

		customerService.save(customer);

		return "redirect:/customers/list";
	}

	@RequestMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int id) {

		customerService.deleteById(id);

		return "redirect:/customers/list";
	}

}