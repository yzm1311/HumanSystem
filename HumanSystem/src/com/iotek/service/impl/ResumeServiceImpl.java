package com.iotek.service.impl;

import com.iotek.dao.ResumeDao;
import com.iotek.entity.Resume;
import com.iotek.service.ResumeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("resumeService")
public class ResumeServiceImpl implements ResumeService {

    @Resource(name = "resumeDao")
    private ResumeDao resumeDao;
    public ResumeDao getResumeDao() {return resumeDao;}
    public void setResumeDao(ResumeDao resumeDao) {this.resumeDao = resumeDao;}


    
    public void addResume(Resume resume) {
        resumeDao.addResume(resume);
    }

    
    public void updateResume(Resume resume) {
        resumeDao.updateResume(resume);
    }

    
    public void deleteResume(Resume resume) {
        resumeDao.deleteResume(resume);
    }

    
    public List<Resume> getAllResume() {
        List<Resume> resumeList=resumeDao.getAllResume();
        return resumeList;

    }

    
    public Resume getResumeByUid(int uid) {
       Resume e4= resumeDao.getResumeByUid(25);
        return resumeDao.getResumeByUid(uid);
    }

    
    public Resume getResumeByRid(int rid) {
        return resumeDao.getResumeByRid(rid);
    }

    
    public Resume looKResume() {
        return resumeDao.looKResume();
    }
}
