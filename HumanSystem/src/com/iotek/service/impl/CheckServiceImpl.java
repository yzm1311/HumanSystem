package com.iotek.service.impl;

import com.iotek.dao.CheckonDao;
import com.iotek.entity.Checkon;
import com.iotek.service.CheckonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;


@Service("checkonService")
public class CheckServiceImpl implements CheckonService {

    @Resource(name = "checkonDao")
    private CheckonDao checkonDao;
    public CheckonDao getCheckDao() {return checkonDao;}
    public void setCheckDao(CheckonDao checkDao) {this.checkonDao = checkDao;}


    
    public void addChechon(Checkon checkon) {
        checkonDao.addChechon(checkon);
    }

    public void updateCheckon(Checkon checkon) {
        checkonDao.updateCheckon(checkon);
    }

    public void deleteCheckon(Checkon checkon) {
        checkonDao.deleteCheckon(checkon);
    }

    public List<Checkon> getAll() {
         List<Checkon> checks=checkonDao.getAll();
         return checks;
    }

    public List<Checkon> getCheckonByEid(int Eid) {
        List<Checkon> checkons=checkonDao.getCheckonByEid(Eid);
        return checkons;
    }

    public Checkon getCheckonByTid(int kid) {
        return checkonDao.getCheckonByTid(kid);
    }

    public List<Checkon> getCheckonByParam(Map<String, Object> map) {
        return checkonDao.getCheckonByParam(map);
    }
}
