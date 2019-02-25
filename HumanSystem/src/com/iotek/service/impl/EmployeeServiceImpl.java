package com.iotek.service.impl;

import com.iotek.dao.EmployeeDao;
import com.iotek.entity.Employee;
import com.iotek.service.EmployeeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("empolyeeService")
public class EmployeeServiceImpl implements EmployeeService {

    @Resource(name = "employeeDao")
    private EmployeeDao employeeDao;
    public EmployeeDao getEmployeeDao() {return employeeDao;}
    public void setEmployeeDao(EmployeeDao employeeDao) {this.employeeDao = employeeDao;}

    
    public void addEmployee(Employee employee) {
        employeeDao.addEmployee(employee);
    }

    
    public void updateEmployee(Employee employee) {
        employeeDao.updateEmployee(employee);
    }

    
    public void deleteEmployee(Employee employee) {employeeDao.deleteEmployee(employee);}

    
    public List<Employee> getAll() {
        return employeeDao.getAll();
    }

    
    public Employee getEmployeeByeid(int eid) {
        return employeeDao.getEmployeeByeid(eid);
    }

    
    public Employee getEmployeeByEname(String ename) {
        return employeeDao.getEmployeeByEname(ename);
    }

    
    public void updateTrain(Employee employee) {
         employeeDao.updateTrain(employee);
    }

    
    public List<Employee> getAllByTrain() {
        return employeeDao.getAllByTrain();
    }

    
    public Employee getEmployeeByuid(int uid) {
        return employeeDao.getEmployeeByuid(uid);
    }

    
    public Employee getEAndUByeid(int eid) {
        return employeeDao.getEAndUByeid(eid);
    }

    
    public void updateEandU(Employee employee) {
        employeeDao.updateEandU(employee);
    }

    
    public List<Employee> getEmployeeByPid(int pid) {
        return employeeDao.getEmployeeByPid(pid);
    }

    
    public void updateEmpInfo(Employee employee) {
        employeeDao.updateEmpInfo(employee);
    }

	public Employee getinfo(Integer eid) {
		
		return employeeDao.getinfo(eid);
	}

}
