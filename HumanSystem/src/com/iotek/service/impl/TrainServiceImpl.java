package com.iotek.service.impl;

import com.iotek.dao.TrainDao;
import com.iotek.entity.Train;
import com.iotek.service.TrainService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("trainService")
public class TrainServiceImpl implements TrainService {

    @Resource(name ="trainDao")
    private TrainDao trainDao;
    public TrainDao getTrainDao() {return trainDao;}
    public void setTrainDao(TrainDao trainDao) {this.trainDao = trainDao;}


    
    public int addTrain(Train train) {
        int tid =trainDao.addTrain(train);
        return tid;
    }

    
    public void updateTrain(Train train) {
        trainDao.updateTrain(train);
    }

    
    public void deleteTrain(Train train) {
        trainDao.deleteTrain(train);
    }

    
    public List<Train> getAll() {
         List<Train> trainList=trainDao.getAll();
         return trainList;
    }

    
    public Train getTrainByeid(int eid) {
        return trainDao.getTrainByeid(eid);
    }

    
    public Train getTrainByTid(int tid) {
        return trainDao.getTrainByTid(tid);
    }

    
    public Train getTrainByTname(String tname) {
        return trainDao.getTrainByTname(tname);
    }

    
    public List<Train> getAllByEmployee() {
        return trainDao.getAllByEmployee();
    }
	@Override
	public void delTrain(Integer tid) {
		trainDao.delTrain(tid);
	}


}
