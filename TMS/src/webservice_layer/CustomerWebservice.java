package webservice_layer;

import model_controller.CustomerController;

public class CustomerWebservice {

	private CustomerController CC = new CustomerController();
	
	public String createCustomer(Customer cust){
		return CC.createCustomer(cust);
	}
	
	public Customer[] findCustomerArray(){		
		return CC.findCustomerArray().getCustomerArray();
	}
	
	public Customer findCustomer(int customerNo){
		return CC.findCustomer(customerNo);
	}
	
	public String deleteCustomer(Customer cust){
		return CC.deleteCustomer(cust);
	}
	
	public String updateCustomer(Customer cust){
		return CC.updateCustomer(cust);
	}
}
