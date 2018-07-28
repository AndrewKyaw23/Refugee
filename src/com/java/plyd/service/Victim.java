package com.java.plyd.service;

public class Victim 
{

	private int Victim_id;
	private int Header_id;
	private String Name;
	private String NRC;
	private String BOD;
	private String Age;
	private String Father_Name;
	private String Address;
	private String Arrival_Date;
	private String Arrival_Time;
	private String Grade;
	private String Camp_Name;
	private String Gender;
	
	private String Religion;
	private String Remark;
	
	public Victim() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Victim(int victim_id,int header_id, String name, String nRC, String BOD,String age,
			String father_Name, String address, String arrival_Date,
			String arrival_Time, String grade, String camp_Name, String gender,
		    String religion, String remark) {
		super();
		this.Victim_id = victim_id;
		this.Header_id = header_id;
		this.Name = name;
		this.NRC = nRC;
		this.BOD=BOD;
		this.Age = age;
		this.Father_Name = father_Name;
		this.Address = address;
		this.Arrival_Date = arrival_Date;
		this.Arrival_Time = arrival_Time;
		this.Grade = grade;
		this.Camp_Name = camp_Name;
		
		this.Gender = gender;
		this.Religion = religion;
		this.Remark = remark;
	}

	public int getVictim_id() {
		return Victim_id;
	}

	public void setVictim_id(int victim_id) {
		Victim_id = victim_id;
	}
	public int getHeader_id() {
		return Header_id;
	}

	public void setHeader_id(int header_id) {
		Header_id = header_id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getNRC() {
		return NRC;
	}

	public void setNRC(String nRC) {
		NRC = nRC;
	}

	public String getBOD() {
		return BOD;
	}

	public void setBOD(String bOD) {
		BOD = bOD;
	}
	
	
	
	public String getAge() {
		return Age;
	}

	public void setAge(String age) {
		Age = age;
	}

	public String getFather_Name() {
		return Father_Name;
	}

	public void setFather_Name(String father_Name) {
		Father_Name = father_Name;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getArrival_Date() {
		return Arrival_Date;
	}

	public void setArrival_Date(String arrival_Date) {
		Arrival_Date = arrival_Date;
	}

	public String getArrival_Time() {
		return Arrival_Time;
	}

	public void setArrival_Time(String arrival_Time) {
		Arrival_Time = arrival_Time;
	}

	public String getGrade() {
		return Grade;
	}

	public void setGrade(String grade) {
		Grade = grade;
	}

	public String getCamp_Name() {
		return Camp_Name;
	}

	public void setCamp_Name(String camp_Name) {
		Camp_Name = camp_Name;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}
	public String getReligion() {
		return Religion;
	}

	public void setReligion(String religion) {
		Religion = religion;
	}

	public String getRemark() {
		return Remark;
	}

	public void setRemark(String remark) {
		Remark = remark;
	}
	
	
	
}
