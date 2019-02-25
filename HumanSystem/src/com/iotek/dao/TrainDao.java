package com.iotek.dao;

import com.iotek.entity.Train;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("trainDao")
public interface TrainDao {
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
