package com.iotek.entity;


import java.util.Date;


public class Checkon {
    private int kid;
    private Date starttime;
    private Date endtime;
    private String gowork_state;
    private String upwork_state;
    private Employee employee;

    public Checkon() {
    }

    public int getKid() {
        return kid;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }


    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getGowork_state() {
        return gowork_state;
    }

    public void setGowork_state(String gowork_state) {
        this.gowork_state = gowork_state;
    }

    public String getUpwork_state() {
        return upwork_state;
    }

    public void setUpwork_state(String upwork_state) {
        this.upwork_state = upwork_state;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

	@Override
	public String toString() {
		return "Checkon [kid=" + kid + ", starttime=" + starttime + ", endtime=" + endtime + ", gowork_state="
				+ gowork_state + ", upwork_state=" + upwork_state + "]";
	}
    
}
