package entity;

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
