package com.nhnghia.guitarstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.nhnghia.guitarstore.bo.Guitar;
import com.nhnghia.guitarstore.dbconnection.ConnectionFactory;

public class GuitarDAO {
	public ArrayList<Guitar> getAllGuitar() {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList<Guitar> guitarList = new ArrayList<Guitar>();
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM guitars;";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				guitarList.add(convertToGuitar(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return guitarList;
	}
	
	public ArrayList<Guitar> searchGuitar(String textSearch) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList<Guitar> guitarList = new ArrayList<Guitar>();
		String search = textSearch;
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM guitars WHERE name LIKE '%" + search 
					+ "%' OR type LIKE '%" + search
					+ "%' OR material LIKE '%" + search
					+ "%' OR brand LIKE '%" + search
					+ "%' OR description LIKE '%" + search
					+ "%' OR price LIKE '%" + search
					+ "%';";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				guitarList.add(convertToGuitar(resultSet));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return guitarList;
	}
	
	public void insertGuitar(String name,
								String type,
								String material,
								String brand,
								String description,
								int price,
								int quantity,
								String image) {
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "INSERT INTO guitars (name, type, material, brand, description, price, quantity, image)"
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
			prepareStatement = connection.prepareStatement(sql);
			prepareStatement.setString(1, name);
			prepareStatement.setString(2, type);
			prepareStatement.setString(3, material);
			prepareStatement.setString(4, brand);
			prepareStatement.setString(5, description);
			prepareStatement.setInt(6, price);
			prepareStatement.setInt(7, quantity);
			prepareStatement.setString(8, image);
			prepareStatement.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteGuitar(int id) {
		Connection connection = null;
		Statement statement = null;
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "DELETE FROM guitars WHERE guitar_id=" + id + ";";
			statement = connection.createStatement();
			statement.executeUpdate(sql);
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Guitar findGuitarByID(int id) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM guitars WHERE guitar_id=" + id;
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				Guitar guitar = convertToGuitar(resultSet);
				return guitar;
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void updateGuitar(int id,
								String name,
								String type,
								String material,
								String brand,
								String description,
								int price,
								int quantity,
								String image) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "UPDATE guitars SET name = ?, type = ?, material = ?, brand = ?, description = ?, "
					+ "price = ?, quantity = ?, image = ? WHERE guitar_id = ?;";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, type);
			preparedStatement.setString(3, material);
			preparedStatement.setString(4, brand);
			preparedStatement.setString(5, description);
			preparedStatement.setInt(6, price);
			preparedStatement.setInt(7, quantity);
			preparedStatement.setString(8, image);
			preparedStatement.setInt(9, id);
			preparedStatement.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	private static Guitar convertToGuitar(ResultSet rs) throws SQLException {
		Guitar guitar = new Guitar();
		guitar.setGuitarID(rs.getInt(1));
		guitar.setName(rs.getString(2));
		guitar.setType(rs.getString(3));
		guitar.setMaterial(rs.getString(4));
		guitar.setBrand(rs.getString(5));
		guitar.setDescription(rs.getString(6));
		guitar.setPrice(rs.getInt(7));
		guitar.setQuantity(rs.getInt(8));
		guitar.setImage(rs.getString(9));
		return guitar;
	}

}
