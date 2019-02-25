package com.iotek.entity;

import java.io.Serializable;
import java.util.Date;

public class Rwandph implements Serializable{
    private int rpid;
    private double money;
    private Date rptime;
    private String cause;
    private Employee employee;

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public int getRpid() {
        return rpid;
    }

    public void setRpid(int rpid) {
        this.rpid = rpid;
    }

    public double getMoney() {return money;}

    public void setMoney(double money) {this.money = money;}

    public Date getRptime() {
        return rptime;
    }

    public void setRptime(Date rptime) {
        this.rptime = rptime;
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause;
    }

	@Override
	public String toString() {
		return "Rwandph [rpid=" + rpid + ", money=" + money + ", rptime=" + rptime + ", cause=" + cause + "]";
	}

}
