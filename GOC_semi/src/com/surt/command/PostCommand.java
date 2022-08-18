package com.surt.command;

import java.util.Date;

import com.surt.dto.PostVO;

public class PostCommand
{
	private int post_id;
	private int user_idx;
	private String title;
	private String post_content;
	private int liked;
	private int hit_count;
	private int category;
	private Date post_add_date;
	private Date post_mod_date;
	
	public void setPost_id(int post_id)
	{
		this.post_id = post_id;
	}

	public void setUser_idx(int user_idx)
	{
		this.user_idx = user_idx;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public void setPost_content(String post_content)
	{
		this.post_content = post_content;
	}

	public void setLiked(int liked)
	{
		this.liked = liked;
	}

	public void setHit_count(int hit_count)
	{
		this.hit_count = hit_count;
	}

	public void setCategory(int category)
	{
		this.category = category;
	}


	
	public PostVO toPostVO()
	{
		// PostVO setting
		
		PostVO post = new PostVO();
		post.setPost_id(post_id);
		post.setUser_idx(user_idx);
		post.setTitle(title);
		post.setPost_content(post_content);
		post.setCategory(category);
		post.setHit_count(hit_count);
		post.setPost_mod_date(new Date());
		post.setPost_add_date(new Date());	
		
		return post;
	}
}
