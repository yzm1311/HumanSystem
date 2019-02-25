package com.iotek.entity;


public class User {
    private int uid;
    private String uname;
    private String upasswd;
    private Integer state;
    private Resume resume;


    public Resume getResume() {
        return resume;
    }

    public void setResume(Resume resume) {
        this.resume = resume;
    }

    public User() {
    }

    public User(String uname, String upasswd, Integer state) {
        this.uname = uname;
        this.upasswd = upasswd;
        this.state = state;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpasswd() {
        return upasswd;
    }

    public void setUpasswd(String upasswd) {
        this.upasswd = upasswd;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upasswd=" + upasswd + "]";
	}
    
}
