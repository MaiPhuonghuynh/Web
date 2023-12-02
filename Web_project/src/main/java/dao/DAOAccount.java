package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import context.DBContext;
import entity.Account;
import entity.Food;

public class DAOAccount implements DAOInterface<Account> {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public DAOAccount() {
		try {
			conn = new DBContext().getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Account> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account getById(String s) {
		if (s == "")
			return null;
		String query = "select * from account" + " where a_username = ?;";
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, s);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),
						rs.getString(7));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}

	@Override
	public boolean add(Account a) {
		String query = "insert into ACCOUNT (a_username, a_password, a_email,a_phone)\r\n" + "values (?, ?, ?, ?);";
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, a.getUsername());
			ps.setString(2, a.getPassword());
			ps.setString(3, a.getEmail());
			ps.setString(4, a.getPhone());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean update(Account t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Account t) {
		// TODO Auto-generated method stub
		return false;
	}

	public Account login(String username, String password) {
		String query = "select * from ACCOUNT " + "where a_username = ? and a_password = ?";
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),
						rs.getString(7));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;

	}

	public static void main(String[] args) {
		DAOAccount dao = new DAOAccount();
		Account acc = dao.getById("admin");
		System.out.println(acc.toString());
		;
	}
}
