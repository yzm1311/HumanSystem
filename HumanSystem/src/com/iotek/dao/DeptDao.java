package com.iotek.dao;

import com.iotek.entity.Dept;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("deptDao")
public interface DeptDao {
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
