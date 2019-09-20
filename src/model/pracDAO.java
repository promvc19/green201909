package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class pracDAO {
	
	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public pracDAO() {
		try {
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:/comp/env/mmm");
		con = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	public void close() {
		if(rs!=null) try {rs.close();} catch(SQLException e) {};
		if(ptmt!=null) try {ptmt.close();} catch(SQLException e) {};
		if(con!=null) try {con.close();} catch (SQLException e) {};
		
	}
}
