package com.iotek.service.impl;

import com.iotek.dao.RecruitDao;
import com.iotek.entity.Recruit;
import com.iotek.service.RecruitService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("recruitService")
public class RecruitServiceImpl implements RecruitService {
    @Resource(name = "recruitDao")
    private RecruitDao recruitDao;
    
    public void addRecruit(Recruit recruit) {
        recruitDao.addRecruit(recruit);
    }

    
    public void updateRecruit(Recruit recruit) {
            recruitDao.updateRecruit(recruit);
    }

    
    public void deleteRecruit(Recruit recruit) {
            recruitDao.deleteRecruit(recruit);
    }

    
    public List<Recruit> getAll() {
        return recruitDao.getAll();
    }

    
    public Recruit getRecruitByReid(int reid) {
        return recruitDao.getRecruitByReid(reid);
    }


	@Override
	public void updateRec(Recruit recruit) {
		 recruitDao.updateRec(recruit);
		
	}
}
