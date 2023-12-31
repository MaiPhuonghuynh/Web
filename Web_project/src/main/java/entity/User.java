package entity;

public class User {
	private String lastname;
	private String firstname;	
	private String email;
	private String password;
	private String phoneNumber;

	public User() {
		super();
	}

	public User(String lastname, String firstname, String email, String password, String phoneNumber) {
		super();
		this.lastname = lastname;
		this.firstname = firstname;
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	
}
