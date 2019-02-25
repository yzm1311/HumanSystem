package com.iotek.entity;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;


public class Train {
    private int tid;
    private String tname;
    private Date begintime;
    private Date endtime;
    private String content;
    private int state;
    private Set<Employee> employeeSet=new HashSet<Employee>();

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }



    public Train() {
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Date getBegintime() {
        return begintime;
    }

    public void setBegintime(Date begintime) {
        this.begintime = begintime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Set<Employee> getEmployeeSet() {
        return employeeSet;
    }

    public void setEmployeeSet(Set<Employee> employeeSet) {
        this.employeeSet = employeeSet;
    }

	@Override
	public String toString() {
		return "Train [tid=" + tid + ", tname=" + tname + ", begintime=" + begintime + ", endtime=" + endtime
				+ ", content=" + content + ", state=" + state + "]";
	}
    
}
