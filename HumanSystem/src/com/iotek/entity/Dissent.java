package com.iotek.entity;

import java.util.Date;

public class Dissent {
    private int did;
    private String excuse;
    private String month;
    private Employee employee;

    public Dissent() {
    }
     
    public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int getDid() {return did;}

    public void setDid(int did) {this.did = did;}

    public String getExcuse() {return excuse;}

    public void setExcuse(String excuse) {this.excuse = excuse;}

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}
