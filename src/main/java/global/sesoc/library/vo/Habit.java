package global.sesoc.library.vo;


public class Habit {
	private String id;
	private int time;
	private int amount;
	private String inputdate;
	
	public Habit() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Habit(String id, int time, int amount, String inputdate) {
		super();
		this.id = id;
		this.time = time;
		this.amount = amount;
		this.inputdate = inputdate;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getTime() {
		return time;
	}


	public void setTime(int time) {
		this.time = time;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public String getInputdate() {
		return inputdate;
	}


	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}


	@Override
	public String toString() {
		return "Habit [id=" + id + ", time=" + time + ", amount=" + amount + ", inputdate=" + inputdate + "]";
	}

}
