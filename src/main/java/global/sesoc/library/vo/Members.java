package global.sesoc.library.vo;

 
public class Members {
	private String id;					
	private String password;			
	private String name;			
	private int phone;						
	private String email;		
	private String sub;
	private String genre_num;
	
	
	public Members(String id, String password, String name, int phone, String email, String sub, String genre_num) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.sub = sub;
		this.genre_num = genre_num;
	}

	
	public Members() {
		
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


	public int getPhone() {
		return phone;
	}


	public void setPhone(int phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getSub() {
		return sub;
	}


	public void setSub(String sub) {
		this.sub = sub;
	}


	public String getGenre_num() {
		return genre_num;
	}


	public void setGenre_num(String genre_num) {
		this.genre_num = genre_num;
	}


	@Override
	public String toString() {
		return "Members [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", email="
				+ email + ", sub=" + sub + ", genre_num=" + genre_num + "]";
	}
	
}
