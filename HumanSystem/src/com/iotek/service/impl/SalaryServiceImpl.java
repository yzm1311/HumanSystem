package com.iotek.service.impl;

import com.iotek.dao.SalaryDao;
import com.iotek.entity.Salary;
import com.iotek.service.SalaryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;


@Service("salaryService")
public class SalaryServiceImpl implements SalaryService {
    @Resource(name = "salaryDao")
    private SalaryDao salaryDao;

    
    public void addSalary(Salary salary) {
        salaryDao.addSalary(salary);
    }

    
    public void updateSalary(Salary salary) {
        salaryDao.updateSalary(salary);
    }

    
    public List<Salary> getByEid(int eid) {
        List<Salary> salaries=salaryDao.getByEid(eid);
        return salaries;
    }

    
    public Salary getBySid(int sid) {
        return salaryDao.getBySid(sid);
    }

    
    public List<Salary> getAllSalary() {
        List<Salary> salaries=salaryDao.getAllSalary();
        return salaries;
    }

    
    public Salary getSalaryByEidAndMonth(Map<String, Object> map) {
        return salaryDao.getSalaryByEidAndMonth(map);
    }
}
