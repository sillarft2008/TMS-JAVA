package model_controller;
import data_access_layer.CustomerSQL;
import webservice_layer.Customer;
import webservice_layer.CustomerArray;

public class CustomerController {
	
	private CustomerSQL CS = new CustomerSQL();
	
	public String createCustomer(Customer cust){
		return CS.CreateCustomer(cust);
	}
	public CustomerArray findCustomerArray(){
		return CS.FindCustomerArray();
	}
	public Customer findCustomer(int customerNo){
		return CS.FindCustomer(customerNo);
	}
	public String deleteCustomer(Customer cust){
		return CS.DeleteCustomer(cust);
	}
    public String updateCustomer(Customer cust){
    	return CS.UpdateCustomer(cust);
	}
}