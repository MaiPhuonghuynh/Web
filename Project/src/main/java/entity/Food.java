package entity;

import java.util.Objects;

public class Food {
	private int id;
	private String name;
	private double price;
	private int discount;
	private String urlImg;
	private String describe;
	private int category;
	private String ingredient;

	public Food() {
	}

	public Food(int id, String name, double price, int discount, String urlImg, String describe, int category,
			String ingredient) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.discount = discount;
		this.urlImg = urlImg;
		this.describe = describe;
		this.category = category;
		this.ingredient = ingredient;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getUrlImg() {
		return urlImg;
	}

	public void setUrlImg(String urlImg) {
		this.urlImg = urlImg;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	
	

	@Override
	public int hashCode() {
		return Objects.hash(category, describe, discount, id, ingredient, name, price, urlImg);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Food other = (Food) obj;
		return category == other.category && Objects.equals(describe, other.describe) && discount == other.discount
				&& id == other.id && Objects.equals(ingredient, other.ingredient) && Objects.equals(name, other.name)
				&& Double.doubleToLongBits(price) == Double.doubleToLongBits(other.price)
				&& Objects.equals(urlImg, other.urlImg);
	}

	@Override
	public String toString() {
		return "Food [id=" + id + ", name=" + name + ", price=" + price + ", discount=" + discount + ", urlImg="
				+ urlImg + ", describe=" + describe + ", category=" + category + ", ingredient=" + ingredient + "]";
	}

	public int sale() {
		if (discount > 0)
			return (int) (price - (price * discount) / 100);
		return 0;
	}
}
