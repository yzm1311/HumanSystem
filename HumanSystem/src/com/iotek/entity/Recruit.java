package com.iotek.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Recruit {
    private int reid;
    private String rname;
    private String address;
    private Date grantTime;
    private String description;
    private Integer state;
    private Post post;
    private Set<Resume> resumeSet=new HashSet<Resume>();

    public Set<Resume> getResumeSet() {
        return resumeSet;
    }

    public void setResumeSet(Set<Resume> resumeSet) {
        this.resumeSet = resumeSet;
    }

    public int getReid() {
        return reid;
    }

    public void setReid(int reid) {
        this.reid = reid;
    }

    public Recruit() {
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String name) {
        this.rname = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getGrantTime() {
        return grantTime;
    }

    public void setGrantTime(Date grantTime) {
        this.grantTime = grantTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

	public Recruit(int reid, String name, String address, Date grantTime, String description) {
		super();
		this.reid = reid;
		this.rname = name;
		this.address = address;
		this.grantTime = grantTime;
		this.description = description;
	}

	@Override
	public String toString() {
		return "Recruit [reid=" + reid + ", name=" + rname + ", address=" + address + ", grantTime=" + grantTime
				+ ", description=" + description + "]";
	}
    
}
