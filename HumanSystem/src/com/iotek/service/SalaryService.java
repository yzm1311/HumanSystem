package com.iotek.service;

import com.iotek.entity.Salary;

import java.util.List;
import java.util.Map;


public interface SalaryService {
    public void addSalary(Salary salary);
    public void updateSalary(Salary salary);
    public List<Salary> getByEid(int eid);
    public Salary getBySid(int sid);
    public List<Salary> getAllSalary();
    public Salary getSalaryByEidAndMonth(Map<String,Object> map);
}
