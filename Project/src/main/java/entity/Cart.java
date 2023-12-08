package entity;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<InfoBill> bill;

	public Cart() {
		this.bill = new ArrayList<InfoBill>();
	}

	public Cart(List<InfoBill> bill) {
		super();
		this.bill = bill;
	}

	public List<InfoBill> getBill() {
		return bill;
	}

	public void setBill(List<InfoBill> bill) {
		this.bill = bill;
	}

	public int totalBill() {
		int total = 0;
		for (InfoBill infoBill : bill) {
			total += infoBill.totalPrice();
		}
		return total;
	}

}
