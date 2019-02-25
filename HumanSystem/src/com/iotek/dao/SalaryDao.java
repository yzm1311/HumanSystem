package com.iotek.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.iotek.entity.Salary;
@Repository("salaryDao")
public interface SalaryDao {

    public void addSalary(Salary salary);
    public void updateSalary(Salary salary);
    public List<Salary> getByEid(int eid);
    public Salary getBySid(int sid);
    public List<Salary> getAllSalary();
    public Salary getSalaryByEidAndMonth(Map<String,Object> map);

}
