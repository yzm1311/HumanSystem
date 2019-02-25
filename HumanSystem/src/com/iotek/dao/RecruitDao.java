package com.iotek.dao;

import com.iotek.entity.Recruit;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("recruitDao")
public interface RecruitDao {
    public void addRecruit(Recruit recruit);

    public void updateRecruit(Recruit recruit);
   
    public void updateRec(Recruit recruit);
    
    public void deleteRecruit(Recruit recruit);

    public List<Recruit> getAll();

    public Recruit getRecruitByReid(int reid);



}