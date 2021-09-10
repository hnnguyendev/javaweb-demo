package com.nhnghia.bookmanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.nhnghia.bookmanagement.bo.Contact;
import com.nhnghia.bookmanagement.dbconnection.ConnectionFactory;

public class ContactDAO {
	public void insertContact (String firstname, String lastname, String email, String message) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "INSERT INTO contacts (firstname, lastname, email, message)" + 
					"VALUES (?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, firstname);
			preparedStatement.setString(2, lastname);
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, message);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Contact> getAllContact (){
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList<Contact> contactList = new ArrayList<Contact>();
		
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM contacts";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			
			while (resultSet.next()) {
				contactList.add(convertToContact(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return contactList;
	}
	
	public void deleteContact(int id) {
		Connection connection = null;
		Statement statement = null;
		
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "DELETE FROM contacts WHERE id = " + id;
			statement = connection.createStatement();
			statement.executeUpdate(sql);
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	private static Contact convertToContact(ResultSet rs) throws SQLException {
		Contact contact = new Contact();
		contact.setId(rs.getInt(1));
		contact.setFirstname(rs.getString(2));
		contact.setLastname(rs.getString(3));
		contact.setEmail(rs.getString(4));
		contact.setMessage(rs.getString(5));
		return contact;
	}
}
