package com.iotek.dao;

import com.iotek.entity.Resume;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("resumeDao")
public interface ResumeDao {
	
    public void addResume(Resume resume);
    public void updateResume(Resume resume);
    public void deleteResume(Resume resume);
    public List<Resume> getAllResume();
    public Resume getResumeByUid(int uid);
    public Resume getResumeByRid(int rid);
    public Resume looKResume();

}
