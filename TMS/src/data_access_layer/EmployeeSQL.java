package data_access_layer;

import java.sql.ResultSet;
import java.sql.SQLException;

import webservice_layer.Employee;
import webservice_layer.EmployeeArray;

public class EmployeeSQL {

DBConnect dbconn = new DBConnect();
java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd-MM-yyyy");

	
	public EmployeeArray getAllEmployees() {
		
		System.out.println("Select all employees");
		try {
			dbconn.connect(); // Calling a static method to solve
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM employee");
			rs.next();
			int count = rs.getInt("result");
			
			EmployeeArray employeeArray = new EmployeeArray(count);

			ResultSet rs2 = dbconn.select("SELECT Id,firstName,lastName,email,address,telefone,birthdate FROM employee");

			while (rs2.next()){
				Employee employee = new Employee();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("firstName=" + rs2.getString("firstName"));
				System.out.println("lastName=" + rs2.getString("lastName"));
				System.out.println("email=" + rs2.getString("email"));
				System.out.println("address=" + rs2.getString("address"));
				System.out.println("telefone=" + rs2.getString("telefone"));
				String currentTime = sdf.format(rs2.getDate("birthdate"));
				System.out.println("birthday=" + currentTime);

				employee.setId(rs2.getInt("Id"));
				employee.setFirstName(rs2.getString("firstName"));
				employee.setLastName(rs2.getString("lastName"));
				employee.setEmail(rs2.getString("email"));
				employee.setAddress(rs2.getString("address"));
				employee.setTelefone(rs2.getString("telefone"));
				employee.setBirthdate(currentTime);

		        employeeArray.addEmployee(employee);
			}	
			return employeeArray;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
	
	public Employee FindEmployee(int Id){
		System.out.println("Find Employee");
		Employee employee = new Employee();
		try {
			dbconn.connect();
			
			ResultSet rs = dbconn.select("SELECT Id,firstName,lastName,email,address,telefone,birthdate FROM employee WHERE id = " + Id);
			rs.next();
			System.out.println("Id=" + rs.getInt("Id"));
			System.out.println("firstName=" + rs.getString("firstName"));
			System.out.println("lastName=" + rs.getString("lastName"));
			//System.out.println("ItemId=" + rs.getString("itemId"));
			System.out.println("email=" + rs.getString("email"));
			System.out.println("address=" + rs.getString("address"));
			System.out.println("telefone=" + rs.getString("telefone"));
			java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
			String currentTime = sdf.format(rs.getDate("birthdate"));
			System.out.println("birthday=" + currentTime);
			
			employee.setId(rs.getInt("Id"));
			employee.setFirstName(rs.getString("firstName"));
			employee.setLastName(rs.getString("lastName"));
			employee.setEmail(rs.getString("email"));
			employee.setAddress(rs.getString("address"));
			employee.setTelefone(rs.getString("telefone"));
			String date = sdf.format(rs.getDate("birthdate"));
			employee.setBirthdate(date);
			
			return employee;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}		
	}
	
	public String CreateEmployee(Employee employee){
		System.out.println("Create employee");
		try {
			dbconn.connect();
			dbconn.insert("INSERT INTO employee (Id,firstName,lastName,email,address,telefone,birthdate)"
					+ " VALUES (" + employee.getId() + ",'" + employee.getFirstName() + "','" + employee.getLastName() + "','" + employee.getEmail() + "','" + employee.getAddress() + "','" + employee.getTelefone() + "','" + employee.getBirthdate() + "')");
			return "Employee Created";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Create failed";
	}
	public String DeleteEmployee(Employee employee){
		System.out.println("Delete Employee");
		try {
			dbconn.connect();
			dbconn.delete("DELETE FROM employee WHERE Id =" + employee.getId());
			return "Employee Deleted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Delete failed";
	}
	public String UpdateEmployee(Employee employee){
		System.out.println("Update Employee");
		try {
			dbconn.connect();
			dbconn.update("UPDATE employee SET firstName = '" + employee.getFirstName() + "',lastName = '" + employee.getLastName() +  "',email = '" + employee.getEmail() +  "',address = '" + employee.getAddress() +  "',telefone = '" + employee.getTelefone() +  "',birthdate = '" + employee.getBirthdate() +  "' WHERE Id = " + employee.getId());
			return "Employee Updated";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Update failed";
	}
}
