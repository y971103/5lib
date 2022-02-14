package global.sesoc.library.vo;

 
public class Members {
	private String id;					
	private String password;			
	private String name;			
	private String phone;						
	private String email;		
	private int sub;
	private int genre_type;
	
	
	public Members(String id, String password, String name, String phone, String email, int sub, int genre_type) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.sub = sub;
		this.genre_type = genre_type;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getSub() {
		return sub;
	}


	public void setSub(int sub) {
		this.sub = sub;
	}


	public int getGenre_type() {
		return genre_type;
	}


	public void setGenre_type(int genre_type) {
		this.genre_type = genre_type;
	}


	@Override
	public String toString() {
		return "Members [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", email="
				+ email + ", sub=" + sub + ", genre_type=" + genre_type + "]";
	}
	
}
