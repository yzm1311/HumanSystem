package com.iotek.entity;

import java.io.Serializable;

public class Employee implements Serializable{
    private int eid;
    private String ename;
    private String sex;
    private Integer age;
    private String tel;
    private String email;
    private Integer state;
    private Dept dept;
    private Post post;
    private Train train;
    private User user;
    private Salary salary;
    public void setSalary(Salary salary) {
		this.salary = salary;
	}
    public Salary getSalary() {
		return salary;
	}

    public Employee() {
    }
    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public Train getTrain() {
        return train;
    }

    public void setTrain(Train train) {
        this.train = train;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", ename=" + ename + ", sex=" + sex + ", age=" + age + ", tel=" + tel
				+ ", email=" + email + ", state=" + state + ", dept=" + dept + ", post=" + post + ", train=" + train
				+ ", user=" + user + "]";
	}


}
