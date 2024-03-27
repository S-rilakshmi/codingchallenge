package controller;

import java.util.Scanner;

import dao.CustomerDao;
import dao.LoanDao;
import entity.model.Customer;

public class LoanController {
	private LoanDao loanDao = new LoanDao();
    private CustomerDao customerDao = new CustomerDao();
    private static Scanner scanner = new Scanner(System.in);

 

    
    public Customer getCustomer(int cid)
    {
		return customerDao.getCustomer(cid);
    	
    }
    

}
