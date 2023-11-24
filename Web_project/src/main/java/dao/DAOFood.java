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
		DAOInterface<Food> dao = new DAOFood();
		for (Food ls : dao.getAll()) {
			System.out.println(ls);
		}
	}

}
