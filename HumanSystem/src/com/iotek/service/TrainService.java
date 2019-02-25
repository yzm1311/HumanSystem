package com.iotek.service;

import com.iotek.entity.Train;

import java.util.List;



public interface TrainService {
    public int addTrain(Train train);
    public void updateTrain(Train train);
    public void deleteTrain(Train train);
    public List<Train> getAll();
    public Train getTrainByeid(int eid);
    public Train getTrainByTid(int tid);
    public Train getTrainByTname(String tname);
    public List<Train> getAllByEmployee();
    
    
    public void delTrain(Integer tid);
}
