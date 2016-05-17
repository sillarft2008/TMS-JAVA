package webservice_layer;

public class CustomerArray {
	private Customer[] customerArray;	 
	private int counter;
	
	public CustomerArray(int size){
		customerArray = new Customer[size];
		counter = 0;
	}
	
	public Customer[] getCustomerArray(){
		return customerArray;
	}
	
	public void addCustomer(Customer cust){
		customerArray[counter] = cust;
		counter ++;
	}
	
	public Customer getCustomer(int pos){
		return customerArray[pos];
	}
	
  	public int getNumberOfRows(){
  		return counter+1;
  	}
	
  	public String toString(){
  		String returnString = "CustomerArray:\n";
  		for (Customer customer : customerArray) {
			returnString = returnString + customer.toString() + "\n";
		}
  		return returnString;
  	}
	
}
