package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

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
	
	public String execute() throws Exception{
		System.out.printf("in registeraction", this.name, this.password);
		// insertion here
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/UsersManagement","test","password");    
		Statement stmt=con.createStatement();
		int rs=stmt.executeUpdate("INSERT INTO users(username, PASSWORD) VALUES('"+this.name+"','"+this.password+"')");  
		System.out.println(rs);
		con.close();  
		System.out.print(this.name);
		if(rs > 0) {
			addActionMessage("Welcome "+this.name+", successfully registered. This is action message example");
			return "success";
		}
		return "error";
	}

}
