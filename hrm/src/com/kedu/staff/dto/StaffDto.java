package com.kedu.staff.dto;

public class StaffDto {
	private String picture;
	private String staff_name;
	private String staff_jumin;
	private String gender;
	private String staff_email;
	private String phone;
	private String zipcode;
	private String address;
	private String detail_add;
	private String staff_id;
	private String staff_pwd;
	private int dep_id;
	private int pos_id;
	private String admin;
	private String stt_date;
	private String end_date;
	private int salary;
	private String reg_stf_date;
	private String registrant;

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getStaff_name() {
		return staff_name;
	}

	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}

	public String getStaff_jumin() {
		return staff_jumin;
	}

	public void setStaff_jumin(String staff_jumin) {
		this.staff_jumin = staff_jumin;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getStaff_email() {
		return staff_email;
	}

	public void setStaff_email(String staff_email) {
		this.staff_email = staff_email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetail_add() {
		return detail_add;
	}

	public void setDetail_add(String detail_add) {
		this.detail_add = detail_add;
	}

	public String getStaff_id() {
		return staff_id;
	}

	public void setStaff_id(String staff_id) {
		this.staff_id = staff_id;
	}

	public String getStaff_pwd() {
		return staff_pwd;
	}

	public void setStaff_pwd(String staff_pwd) {
		this.staff_pwd = staff_pwd;
	}

	public int getDep_id() {
		return dep_id;
	}

	public void setDep_id(int dep_id) {
		this.dep_id = dep_id;
	}

	public int getPos_id() {
		return pos_id;
	}

	public void setPos_id(int pos_id) {
		this.pos_id = pos_id;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getStt_date() {
		return stt_date;
	}

	public void setStt_date(String stt_date) {
		this.stt_date = stt_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getReg_stf_date() {
		return reg_stf_date;
	}

	public void setReg_stf_date(String reg_stf_date) {
		this.reg_stf_date = reg_stf_date;
	}

	public String getRegistrant() {
		return registrant;
	}

	public void setRegistrant(String registrant) {
		this.registrant = registrant;
	}

	@Override
	public String toString() {
		return "StaffDto [picture=" + picture + ", staff_name=" + staff_name + ", staff_jumin=" + staff_jumin
				+ ", gender=" + gender + ", staff_email=" + staff_email + ", phone=" + phone + ", zipcode=" + zipcode
				+ ", address=" + address + ", detail_add=" + detail_add + ", staff_id=" + staff_id + ", staff_pwd="
				+ staff_pwd + ", dep_id=" + dep_id + ", pos_id=" + pos_id + ", admin=" + admin + ", stt_date="
				+ stt_date + ", end_date=" + end_date + ", salary=" + salary + ", reg_stf_date=" + reg_stf_date
				+ ", registrant=" + registrant + "]";
	}

}
