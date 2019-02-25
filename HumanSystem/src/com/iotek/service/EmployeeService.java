package com.iotek.service;

import com.iotek.entity.Employee;

import java.util.List;

public interface EmployeeService {
    public void addEmployee(Employee employee);

    public void updateEmployee(Employee employee);

    public void deleteEmployee(Employee employee);

    public List<Employee> getAll();

    public Employee getEmployeeByeid(int eid);

    public Employee getEmployeeByEname(String ename);

    public void updateTrain(Employee employee);

    public List<Employee> getAllByTrain();

    public Employee getEmployeeByuid(int uid);

    public Employee getEAndUByeid(int eid);

    public void updateEandU(Employee employee);

    public List<Employee>getEmployeeByPid(int pid);

    public void updateEmpInfo(Employee employee);
    
    public  Employee getinfo(Integer  eid);
}
