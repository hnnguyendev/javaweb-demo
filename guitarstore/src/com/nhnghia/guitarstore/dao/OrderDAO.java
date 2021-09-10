package com.nhnghia.guitarstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.nhnghia.guitarstore.dbconnection.ConnectionFactory;
import com.nhnghia.guitarstore.modal.OrderView;
import com.nhnghia.guitarstore.modal.UserOrderView;

public class OrderDAO {
	public void insertOrder(int guitarID, int userID) {
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "INSERT INTO orders (guitar_id, user_id) VALUES (?, ?);";
			prepareStatement = connection.prepareStatement(sql);
			prepareStatement.setInt(1, guitarID);
			prepareStatement.setInt(2, userID);
			prepareStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<OrderView> getAllOrder() {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList<OrderView> orderList = new ArrayList<OrderView>();
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT orders.order_id, users.fullname, users.email, users.phone, "
					+ "guitars.name, guitars.type, guitars.brand, guitars.image, guitars.price "
					+ "FROM orders "
					+ "INNER JOIN users ON orders.user_id = users.user_id "
					+ "INNER JOIN guitars ON orders.guitar_id = guitars.guitar_id;";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				orderList.add(convertToOrderView(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return orderList;
	}
	
	public ArrayList<UserOrderView> getAllUserOrder(int id) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList<UserOrderView> userOrderList = new ArrayList<UserOrderView>();
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT orders.order_id, users.username, users.fullname, guitars.name, guitars.type, "
					+ "guitars.brand, guitars.image, guitars.price "
					+ "FROM orders "
					+ "INNER JOIN users ON orders.user_id = users.user_id "
					+ "INNER JOIN guitars ON orders.guitar_id = guitars.guitar_id WHERE users.user_id = "
					+ id + ";";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				userOrderList.add(convertToUserOrderView(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userOrderList;
	}
	
	public void deleteOrder(int id) {
		Connection connection = null;
		Statement statement = null;
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "DELETE FROM orders WHERE order_id=" + id + ";";
			statement = connection.createStatement();
			statement.executeUpdate(sql);
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}

	private static OrderView convertToOrderView(ResultSet rs) throws SQLException {
		OrderView orderView = new OrderView();
		orderView.setOrderID(rs.getInt(1));
		orderView.setFullname(rs.getString(2));
		orderView.setEmail(rs.getString(3));
		orderView.setPhone(rs.getString(4));
		orderView.setName(rs.getString(5));
		orderView.setType(rs.getString(6));
		orderView.setBrand(rs.getString(7));
		orderView.setImage(rs.getString(8));
		orderView.setPrice(rs.getInt(9));
		return orderView;
	}
	
	private static UserOrderView convertToUserOrderView(ResultSet rs) throws SQLException {
		UserOrderView userOrderView = new UserOrderView();
		userOrderView.setOrderID(rs.getInt(1));
		userOrderView.setUsername(rs.getString(2));
		userOrderView.setFullname(rs.getString(3));
		userOrderView.setName(rs.getString(4));
		userOrderView.setType(rs.getString(5));
		userOrderView.setBrand(rs.getString(6));
		userOrderView.setImage(rs.getString(7));
		userOrderView.setPrice(rs.getInt(8));
		return userOrderView;
	}

}
