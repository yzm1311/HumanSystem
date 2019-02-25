package com.iotek.entity;


import java.util.Date;

public class Salary {
    private int sid;
    private Double basic;
    private Double bonus;
    private Double social;
    private Double punish;
    private Double totalSal;
    private Date accountTime;
    private Employee employee;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public Double getBasic() {
        return basic;
    }

    public void setBasic(Double basic) {
        this.basic = basic;
    }

    public Double getBonus() {
        return bonus;
    }

    public void setBonus(Double bonus) {
        this.bonus = bonus;
    }

    public Double getSocial() {
        return social;
    }

    public void setSocial(Double social) {
        this.social = social;
    }

    public Double getPunish() {
        return punish;
    }

    public void setPunish(Double punish) {
        this.punish = punish;
    }

    public Double getTotalSal() {
        return totalSal;
    }

    public void setTotalSal(Double totalSal) {
        this.totalSal = totalSal;
    }

    public Date getAccountTime() {return accountTime;}

    public void setAccountTime(Date accountTime) {this.accountTime = accountTime;}


    public Employee getEmployee() {return employee;}

    public void setEmployee(Employee employee) {this.employee = employee;}

	@Override
	public String toString() {
		return "Salary [sid=" + sid + ", basic=" + basic + ", bonus=" + bonus + ", social=" + social + ", punish="
				+ punish + ", totalSal=" + totalSal + ", accountTime=" + accountTime  +"]";
	}
    
    
}
