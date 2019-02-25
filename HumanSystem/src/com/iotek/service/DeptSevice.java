package com.iotek.service;

import com.iotek.entity.Dept;

import java.util.List;


public interface DeptSevice {
    public void addDept(Dept dept);
    public void updateDept(Dept  dept);
    public void deleteDept(int did);
    public Dept getDeptBydname(String dname);
    public Dept getDeptBydname1(String dname);
    public List<Dept> getAll();
    public Dept getDeptByUid(int did);
    public Dept getDeptByPid(int pid);
    public Dept getDeptByDId(int did);
}
