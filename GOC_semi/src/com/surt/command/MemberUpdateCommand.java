package com.surt.command;

import java.util.Arrays;
import java.util.Date;

import com.surt.dto.MemberVO;

public class MemberUpdateCommand {
	// 사용자 입력 정보
	private String user_id; // 아이디
	private String name = "semi"; // 이름
	private String[] email; // 이메일
	private String password; // 패스워드
	private String address; // 주소
	private String nickname;// 닉네임
	private String[] phone; // 전화번호
	private String picture = "defaultPicture.jpg";

	// 시스템 정보
	private Date updated_at; // 등록일

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
	
	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	public String[] getPhone() {
		return phone;
	}

	public void setPhone(String[] phone) {
		this.phone = phone;
	}

	

	public MemberVO toMemberVO() {
		String phone = "";
		String email = "";

		for (String data1 : this.phone) {
			phone += data1;
		}

		email = this.email[0] + "@" + this.email[1];

		// MemberVO setting
		MemberVO member = new MemberVO();
		member.setUser_id(user_id);
		member.setName(name);
		member.setEmail(email);
		member.setPhone(phone);
		member.setAddress(address);
		member.setPassword(password);
		member.setNickname(nickname);
		member.setPicture(picture);
		member.setUpdated_at(new Date());
		
		return member;
	}

}
