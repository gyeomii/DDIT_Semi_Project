package com.surt.dto;

import java.util.Date;

public class QuestionVO {
	
	
	private int question_idx;
	private String user_id;
	private String question_type;	
	private String question_title;
	private String question_content;
	private Date question_regdate;
	
	public int getQuestion_idx() {
		return question_idx;
	}
	public void setQuestion_idx(int question_idx) {
		this.question_idx = question_idx;
	}
	public String getQuestion_title() {
		return question_title;
	}
	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getQuestion_content() {
		return question_content;
	}
	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}
	public Date getQuestion_regdate() {
		return question_regdate;
	}
	public void setQuestion_regdate(Date question_regdate) {
		this.question_regdate = question_regdate;
	}
	public String getUser_id() {
		return user_id;
	}
	public String getQuestion_type() {
		return question_type;
	}
	public void setQuestion_type(String question_type) {
		this.question_type = question_type;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
}
