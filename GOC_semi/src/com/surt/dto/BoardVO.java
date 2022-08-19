package com.surt.dto;

import java.util.Date;

public class BoardVO {
	private int post_id;
	private int user_idx;
	private String title;
	private String nickname;
	private String post_content;
	private int liked;
	private int hit_count;
	private int category;
	private Date post_add_date;
	private Date post_mod_date;
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public int getLiked() {
		return liked;
	}
	public void setLiked(int liked) {
		this.liked = liked;
	}
	public int getHit_count() {
		return hit_count;
	}
	public void setHit_count(int hit_count) {
		this.hit_count = hit_count;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public Date getPost_add_date() {
		return post_add_date;
	}
	public void setPost_add_date(Date post_add_date) {
		this.post_add_date = post_add_date;
	}
	public Date getPost_mod_date() {
		return post_mod_date;
	}
	public void setPost_mod_date(Date post_mod_date) {
		this.post_mod_date = post_mod_date;
	}
	
	
	
}
