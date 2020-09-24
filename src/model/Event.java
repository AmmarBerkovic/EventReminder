package model;

public class Event {
	private String name;
	private String date;
	private String desc;
	private int id;
	
	public Event(String date,String name, String desc,int id) {
		this.date=date;
		this.name=name;
		this.desc=desc;
		this.id=id;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public static void month(String option) {
		
	}
	
	public static void week(String option) {
		
	}
	
	
}
