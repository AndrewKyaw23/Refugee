package com.java.plyd.service;

public class Orphans 
{
    private int Orphans_id;
	
	private String Name;
	private String Nrc;
	private String BOD;
	private String Age;
	private String FatherName;
	private String Gender;
	
	private String CampName;
	private String ArrivalDate;
	private String OriginalVillage;
	private String RoomNo;
	private String DepartureDate;
	private String Remark;

	public Orphans() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Orphans(int orphans_id, String name, String nrc, String bOD, String age, String fatherName, String gender,
			String campName, String arrivalDate, String originalVillage, String roomNo, String departureDate,
			String remark) {
		super();
		this.Orphans_id = orphans_id;
		this.Name = name;
		this.Nrc = nrc;
		this.BOD = bOD;
		this.Age = age;
		this.FatherName = fatherName;
		this.Gender = gender;
		this.CampName = campName;
		this.ArrivalDate = arrivalDate;
		this.OriginalVillage = originalVillage;
		this.RoomNo = roomNo;
		this.DepartureDate = departureDate;
		this.Remark = remark;
	}


	public int getOrphans_id() {
		return Orphans_id;
	}

	public void setOrphans_id(int orphans_id) {
		Orphans_id = orphans_id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getNrc() {
		return Nrc;
	}

	public void setNrc(String nrc) {
		Nrc = nrc;
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

	public String getFatherName() {
		return FatherName;
	}

	public void setFatherName(String fatherName) {
		FatherName = fatherName;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getCampName() {
		return CampName;
	}

	public void setCampName(String campName) {
		CampName = campName;
	}

	public String getArrivalDate() {
		return ArrivalDate;
	}

	public void setArrivalDate(String arrivalDate) {
		ArrivalDate = arrivalDate;
	}

	public String getOriginalVillage() {
		return OriginalVillage;
	}

	public void setOriginalVillage(String originalVillage) {
		OriginalVillage = originalVillage;
	}

	public String getRoomNo() {
		return RoomNo;
	}

	public void setRoomNo(String roomNo) {
		RoomNo = roomNo;
	}

	public String getDepartureDate() {
		return DepartureDate;
	}

	public void setDepartureDate(String departureDate) {
		DepartureDate = departureDate;
	}

	public String getRemark() {
		return Remark;
	}

	public void setRemark(String remark) {
		Remark = remark;
	}
	
	
}
