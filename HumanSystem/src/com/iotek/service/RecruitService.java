package com.iotek.service;

import com.iotek.entity.Recruit;

import java.util.List;


public interface RecruitService {
    public void addRecruit(Recruit recruit);

    public void updateRecruit(Recruit recruit);
    
    public void updateRec(Recruit recruit);

    public void deleteRecruit(Recruit recruit);

    public List<Recruit> getAll();

    public Recruit getRecruitByReid(int reid);

}
