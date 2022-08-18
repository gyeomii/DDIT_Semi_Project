package com.surt.command;

import java.util.Date;

import com.surt.dto.MemberVO;

public class MemberRegistCommand {
	// 사용자 입력 정보
	private String user_id; // 아이디
	private String name = "semi"; // 이름
	private String[] email; // 이메일
	private String password; // 패스워드
	private String birth; // 생일
	private String[] address; // 주소
	private String nickname;
	private String picture = "defaultPicture.jpg";
	private String mbti = "CUTE";


	private String gender;
	private String[] phone; // 전화번호
	private int agree_tos;

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

	public String[] getEmail() {
		return email;
	}

	public void setEmail(String[] email) {
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

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String[] getAddress() {
		return address;
	}

	public void setAddress(String[] address) {
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

	public String[] getPhone() {
		return phone;
	}

	public void setPhone(String[] phone) {
		this.phone = phone;
	}
	
	public String getMbti() {
		return mbti;
	}

	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public int getAgree_tos() {
		return agree_tos;
	}

	public void setAgree_tos(int agree_tos) {
		this.agree_tos = agree_tos;
	}

	public Date getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}

//시스템 정보
	private Date regist_date; // 등록일

	public MemberVO toMemberVO() {
		String phone = "";
		String email = "";
		String address ="";

		for (String data1 : this.phone) {
			phone += data1;
		}
		
		for (String data2 : this.address) {
			address += data2;
		}

		email = this.email[0] + "@" + this.email[1];

		// MemberVO setting
		MemberVO member = new MemberVO();
		member.setUser_id(user_id);
		member.setName(name);
		member.setEmail(email);
		member.setPhone(phone);
		member.setAddress(address);
		member.setBirth(birth);
		member.setPassword(password);
		member.setPicture(picture);
		member.setNickname(nickname);
		member.setGender(gender);
		member.setMbti(mbti);
		member.setAgree_tos(1);
		member.setRegist_date(new Date());
		return member;
	}
}
