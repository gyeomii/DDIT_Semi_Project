package com.surt.dto;

import java.util.Date;

public class MemberVO {

	// 사용자 입력 정보
	private int user_idx; // 아이디
	private String user_id;
	private String name = "semi"; // 이름
	private String email; // 이메일
	private String password; // 패스워드
	private String birth; // 전화번호
	private String address; // 주소
	private String nickname;
	private String gender;
	private String phone; // 전화번호
	private String picture; // 사진파일 경로/파일명
	private int agree_tos;
	private String role;
	private String mbti;


	// 시스템 정보
	private Date regist_date; // 등록일
	private Date updated_at;

	public MemberVO() {
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public String getMbti() {
		return mbti;
	}
	
	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public int getAgree_tos() {
		return agree_tos;
	}

	public void setAgree_tos(int agree_tos) {
		this.agree_tos = agree_tos;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Date getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	@Override
	public String toString() {
		return "MemberVO [user_idx=" + user_idx + ", user_id=" + user_id + ", name=" + name + ", email=" + email
				+ ", password=" + password + ", birth=" + birth + ", address=" + address + ", nickname=" + nickname
				+ ", gender=" + gender + ", phone=" + phone + ", picture=" + picture + ", agree_tos=" + agree_tos
				+ ", role=" + role + ", mbti=" + mbti + ", regist_date=" + regist_date + ", updated_at=" + updated_at
				+ "]";
	}

}