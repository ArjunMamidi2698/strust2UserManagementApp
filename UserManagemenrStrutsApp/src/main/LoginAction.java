package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String name;
	private String password;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDefaultRole() {
		return "default-role-admin";
	}
	public Date getDate() {
		return new Date();
	}
	public void validate() {
		System.out.printf("here in validate method");
	      if (this.name == null || this.name.trim().equals("")) {
	         addFieldError("name","The name is required");
	      }
	      if (this.password == null || this.password.trim().equals("")) {
	         addFieldError("password","The password is required");
	      }
	}
	
	public String execute() throws Exception{
		System.out.printf("in login action", this.name, this.password);
		// validation here
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/UsersManagement","test","password");    
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from users"); 
		while(rs.next()) {
			System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));
			if(rs.getString(2).equals(this.password) && rs.getString(3).equalsIgnoreCase(this.name)) {
				con.close();
				addActionMessage("Welcome "+this.name+", successfully logged-in. This is action message example");
				return "success";
			}
		}
		con.close();  
		System.out.print(this.name);
		/*
		 * if((this.name.equals("arjun") && this.password.equals("arjun123")) ||
		 * (this.name.equals("admin") && this.password.equals("admin123"))) { return
		 * "success"; }
		 */
		addActionError("Invalid Credentials");
		addActionError("Invalid Credentials");
		addActionError("Invalid Credentials");
		return "input";
	}
}
