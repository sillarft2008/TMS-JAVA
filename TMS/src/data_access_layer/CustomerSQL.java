package data_access_layer;

import java.sql.ResultSet;
import java.sql.SQLException;

import webservice_layer.Customer;
import webservice_layer.CustomerArray;
public class CustomerSQL {
	
	DBConnect dbconn = new DBConnect();
	
	public CustomerArray FindCustomerArray(){
		
		System.out.println("FindCustomers");
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM customer");
			rs.next();
			int count = rs.getInt("result");
			CustomerArray customerArray = new CustomerArray(count);
			
			ResultSet rs2 = dbconn.select("SELECT Id,firstName,lastName,companyName,cvr,address,telefone FROM customer");
			
			while (rs2.next()){
				Customer cust = new Customer();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("firstName=" + rs2.getString("firstName"));
				System.out.println("lastName=" + rs2.getString("lastName"));
				System.out.println("companyName=" + rs2.getString("companyName"));	
				System.out.println("cvr=" + rs2.getString("cvr"));	
				System.out.println("address=" + rs2.getString("address"));	
				System.out.println("telefone=" + rs2.getString("telefone"));	
				cust.setId(rs2.getInt("Id"));
				cust.setFirstName(rs2.getString("firstName"));
				cust.setLastName(rs2.getString("lastName"));
				cust.setCompanyName(rs2.getString("companyName"));
				cust.setCvr(rs2.getInt("cvr"));
				cust.setAddress(rs2.getString("address"));
				cust.setTelefone(rs2.getString("telefone"));
		        customerArray.addCustomer(cust);
			}	
			return customerArray;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
	
	public Customer FindCustomer(int Id){
		System.out.println("FindCustomer");
		Customer cust = new Customer();
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT Id,firstName,lastName,companyName,cvr,address,telefone FROM customer WHERE id = " + Id);
			rs.next();
			System.out.println("Id=" + rs.getInt("Id"));
			System.out.println("firstName=" + rs.getString("firstName"));
			System.out.println("lastName=" + rs.getString("lastName"));
			System.out.println("companyName=" + rs.getString("companyName"));	
			System.out.println("cvr=" + rs.getString("cvr"));	
			System.out.println("address=" + rs.getString("address"));	
			System.out.println("telefone=" + rs.getString("telefone"));	
			cust.setId(rs.getInt("Id"));
			cust.setFirstName(rs.getString("firstName"));
			cust.setLastName(rs.getString("lastName"));
			cust.setCompanyName(rs.getString("companyName"));
			cust.setCvr(rs.getInt("cvr"));
			cust.setAddress(rs.getString("address"));
			cust.setTelefone(rs.getString("telefone"));
			return cust;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}		
	}
	
	public String CreateCustomer(Customer cust){
		System.out.println("CreateCustomer");
		try {
			dbconn.connect();
			dbconn.insert("INSERT INTO CUSTOMER (Id,firstName,lastName,companyName,cvr,address,telefone) VALUES (" + cust.getId() + ",'" + cust.getFirstName() + "','" + cust.getLastName() + "','" + cust.getCompanyName() + "'," + cust.getCvr() + ",'" + cust.getAddress() + "'," + cust.getTelefone() + ")");
			return "Customer Created";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Create failed";
	}
	public String DeleteCustomer(Customer cust){
		System.out.println("DeleteCustomer");
		try {
			dbconn.connect();
			dbconn.delete("DELETE FROM customer WHERE Id =" + cust.getId());
			return "Customer Deleted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Delete failed";
	}
	public String UpdateCustomer(Customer cust){
		System.out.println("DeleteCustomer");
		try {
			dbconn.connect();
			dbconn.update("UPDATE customer SET firstName = '" + cust.getFirstName() +  "',lastName = '" + cust.getLastName() +  "',companyName = '" + cust.getCompanyName() +  "',cvr = " + cust.getCvr() +  ",address = '" + cust.getAddress() +  "',telefone = '" + cust.getTelefone() +  "' WHERE Id = " + cust.getId());
			return "Customer Updated";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Update failed";
	}
}
