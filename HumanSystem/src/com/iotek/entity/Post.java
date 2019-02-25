package com.iotek.entity;

import java.io.Serializable;

public class Post implements Serializable{
    private int pid;
    private String pname;
    private Dept dept;

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Post() {
    }

    public Post(String pname) {
        this.pname = pname;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

	@Override
	public String toString() {
		return "Post [pid=" + pid + ", pname=" + pname + ", dept=" + dept + "]";
	}



}
