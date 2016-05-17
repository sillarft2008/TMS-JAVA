package data_access_layer;

import java.sql.ResultSet;
import java.sql.SQLException;

import webservice_layer.EmployeeCompetency;
import webservice_layer.EmployeeCompetencyArray;

public class EmployeeCompetencySQL {
DBConnect dbconn = new DBConnect();
	
	public EmployeeCompetencyArray getAllEmployeeCompetencies() {
		System.out.println("Select all employee-competencies");
		try {
			dbconn.connect(); // Calling a static method to solve
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM employee_competency");
			rs.next();
			int count = rs.getInt("result");
			
			EmployeeCompetencyArray ecArray = new EmployeeCompetencyArray(count);

			ResultSet rs2 = dbconn.select("SELECT Id,employeeId, competencyId FROM employee_competency");

			while (rs2.next()){
				EmployeeCompetency ec = new EmployeeCompetency();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("employeeId=" + rs2.getInt("employeeId"));
				System.out.println("competencyId=" + rs2.getInt("competencyId"));

				ec.setId(rs2.getInt("Id"));
				ec.setEmployeeId(rs2.getInt("employeeId"));
				ec.setCompetencyId(rs2.getInt("competencyId"));

		        ecArray.addEmployeeCompetency(ec);
			}	
			return ecArray;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
	public EmployeeCompetencyArray findAllEmployeeCompetencies(int Id) {
		System.out.println("Get all ones employee competencies");
		try {
			dbconn.connect(); // Calling a static method to solve
			ResultSet rs = dbconn.select("SELECT count(*) as result FROM employee_competency WHERE employeeId = " + Id);
			rs.next();
			int count = rs.getInt("result");
			
			EmployeeCompetencyArray ecArray = new EmployeeCompetencyArray(count);

			ResultSet rs2 = dbconn.select("SELECT Id,employeeId,competencyId FROM employee_competency WHERE employeeId = " + Id);

			while (rs2.next()){
				EmployeeCompetency ec = new EmployeeCompetency();
				System.out.println("Id=" + rs2.getInt("Id"));
				System.out.println("employeeId=" + rs2.getInt("employeeId"));
				System.out.println("competencyId=" + rs2.getInt("competencyId"));

				ec.setId(rs2.getInt("Id"));
				ec.setEmployeeId(rs2.getInt("employeeId"));
				ec.setCompetencyId(rs2.getInt("competencyId"));

		        ecArray.addEmployeeCompetency(ec);
			}	
			return ecArray;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
	public EmployeeCompetency FindEmployeeCompetency(int Id){
		System.out.println("Find EmployeeCompetency");
		EmployeeCompetency ec = new EmployeeCompetency();
		try {
			dbconn.connect();
			ResultSet rs = dbconn.select("SELECT Id,employeeId,competencyId FROM employee_competency WHERE employeeId = " + Id);
			rs.next();
			System.out.println("Id=" + rs.getInt("Id"));
			System.out.println("employeeId=" + rs.getInt("employeeId"));
			System.out.println("competencyId=" + rs.getInt("competencyId"));

			ec.setId(rs.getInt("Id"));
			ec.setEmployeeId(rs.getInt("employeeId"));
			ec.setCompetencyId(rs.getInt("competencyId"));
			
			return ec;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
			return null;
		}		
	}
	
	public String CreateEmployeeCompetency(EmployeeCompetency ec){
		System.out.println("Create employeeCompetency");
		try {
			dbconn.connect();
			dbconn.insert("INSERT INTO EMPLOYEE_COMPETENCY (Id,employeeId,competencyId) "
					+ "VALUES (" + ec.getId() + "," + ec.getEmployeeId() + ","+ ec.getCompetencyId() + ")");
			return "Employee_Competency Created";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Create failed";
	}
	public String DeleteEmployeeCompetency(EmployeeCompetency ec){
		System.out.println("Delete Competency");
		try {
			dbconn.connect();
			dbconn.delete("DELETE FROM employee_competency WHERE Id =" + ec.getId());
			return "Employee_Competency Deleted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Delete failed";
	}
	//doesn't work
	public String UpdateEmployeeCompetency(EmployeeCompetency ec){
		System.out.println("Update Employee_Competency");
		try {
			dbconn.connect();
			dbconn.update("UPDATE employee_competency SET employeeId = " + ec.getEmployeeId() + ", competencyId = " + ec.getCompetencyId() + ", WHERE Id = " + ec.getId());
			return "Employee_Competency Updated";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
		}
		return "Update failed";
	}

}
