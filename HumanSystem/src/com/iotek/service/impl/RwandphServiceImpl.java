package com.iotek.service.impl;

import com.iotek.dao.RwandphDao;
import com.iotek.entity.Rwandph;
import com.iotek.service.RwandphService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;


@Service("rwandphService")
public class RwandphServiceImpl implements RwandphService{

    @Resource(name = "rwandphDao")
    private RwandphDao rwandphDao;
    public RwandphDao getRwandphDao() {return rwandphDao;}
    public void setRwandphDao(RwandphDao rwandphDao) {this.rwandphDao = rwandphDao;}


    
    public void addRwandph(Rwandph rwandph) {
       rwandphDao.addRwandph(rwandph);
    }

    
    public void updateRwandph(Rwandph rwandph) {
            rwandphDao.updateRwandph(rwandph);
    }

    
    public void deleteRwandph(int rpid) {
            rwandphDao.deleteRwandph(rpid);
    }

    
    public List<Rwandph> getAll() {
        List<Rwandph> list=rwandphDao.getAll();
        return list;
    }


    
    public Rwandph getRwandphRpid(int rpid) {
        return rwandphDao.getRwandphRpid(rpid);
    }

    
    public List<Rwandph> getRwandphByParam(Map<String, Object> map) {
        return rwandphDao.getRwandphByParam(map);
    }
	@Override
	public List<Rwandph> getRwandphEid(int eid) {
		List<Rwandph> list = rwandphDao.getRwandEid(eid);
		return list;
	}
}
