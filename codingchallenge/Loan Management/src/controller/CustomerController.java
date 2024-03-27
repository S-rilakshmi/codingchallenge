package controller;

import java.util.Scanner;

import dao.CustomerDao;
import entity.model.Customer;

public class CustomerController extends CustomerControllerInterface {

	CustomerDao cd = new CustomerDao();
	static Scanner sc = new Scanner(System.in);
	public void addCustomer() {
		
		Customer c = new Customer();
		
		System.out.print("Enter your name : ");
		c.setName(sc.next());

		System.out.print("Enter your email : ");
		c.setEmailAddress(null);

		System.out.print("Enter your Address : ");
		c.setAddress(sc.next());
		
		System.out.print("Enter your Phone Number : ");
		c.setPhoneNumber(sc.next());
		
		
		
		
	}

	@Override
	public void updateCustomer() {
		// TODO Auto-generated method stub
		
	}
 
}
