package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Account;
import entity.Food;

public class DAOFood implements DAOInterface<Food> {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public DAOFood() {
		try {
			conn = new DBContext().getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Food> getAll() {
		List<Food> ls = new ArrayList<Food>();
		String query = "select * from Food";
		try {
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				ls.add(new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8)));
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return ls;
	}

	@Override
	public Food getById(String s) {
		String query = "select * from food" + " where f_id = ?;";
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, s);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}

	public List<Food> getByName(String name) {
		List<Food> ls = new ArrayList<Food>();
		String query = "SELECT * " + "FROM Food "
				+ " WHERE dbo.ufn_removeMark(f_name) LIKE ? OR f_name LIKE ?";
		String s = "%" + name + "%";
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, s);
			ps.setString(2, s);
			rs = ps.executeQuery();
			while (rs.next()) {
				ls.add(new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8)));
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return ls;
	}

	public List<Food> sortByPrice(boolean ASC) {
		List<Food> ls = new ArrayList<Food>();
		String query = "SELECT * FROM FOOD ORDER BY f_price - (f_price * f_discount / 100) ";
		if (!ASC) {
			query += " desc";
		}
		try {
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				ls.add(new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8)));
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return ls;
	}

	public List<Food> sortByName(boolean ASC) {
		List<Food> ls = new ArrayList<Food>();
		String query = "select * from FOOD order by f_name";
		if (!ASC) {
			query += " desc";
		}
		try {
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				ls.add(new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8)));
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return ls;
	}

	@Override
	public boolean add(Food t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Food t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Food t) {
		// TODO Auto-generated method stub
		return false;
	}

	public static void main(String[] args) {
		DAOFood dao = new DAOFood();
		List<Food> lsFood = dao.getByName("goi");
		for (Food ls : lsFood) {
			System.out.println(ls);
		}
	}

}
