package com.iotek.service.impl;

import com.iotek.dao.DeptDao;
import com.iotek.entity.Dept;
import com.iotek.service.DeptSevice;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("deptService")
public class DeptSeviceImpl implements DeptSevice{

    @Resource(name = "deptDao")
    private DeptDao deptDao;

    public DeptDao getDeptDao() {
        return deptDao;}

    public void setDeptDao(DeptDao deptDao) {
        this.deptDao = deptDao;
    }

    
    public void addDept(Dept dept) {
         deptDao.addDept(dept);
    }

    
    public void updateDept(Dept dept) {
        deptDao.updateDept(dept);

    }

    
    public void deleteDept(int did) {
            deptDao.deleteDept(did);
    }

    
    public Dept getDeptBydname(String dname) {
        Dept dept=deptDao.getDeptBydname(dname);

        return dept;
    }

    
    public List<Dept> getAll() {
         List<Dept> dept=deptDao.getAll();
        return dept;
    }

    
    public Dept getDeptByUid(int did) {
        return deptDao.getDeptByUid(did);

    }

    
    public Dept getDeptByPid(int pid) {
        return deptDao.getDeptByPid(pid);
    }

    
    public Dept getDeptByDId(int did) {
        return deptDao.getDeptByDId(did);
    }

	@Override
	public Dept getDeptBydname1(String dname) {
		 Dept dept=deptDao.getDeptBydname1(dname);

	        return dept;
	}
}
