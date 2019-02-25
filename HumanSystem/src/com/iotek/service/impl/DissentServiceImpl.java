package com.iotek.service.impl;

import com.iotek.dao.DissentDao;
import com.iotek.entity.Dissent;
import com.iotek.service.DissentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("dissentService")
public class DissentServiceImpl implements DissentService {
    @Resource(name = "dissentDao")
    private DissentDao dissentDao;
    
    public void addDissent(Dissent dissent) {
        dissentDao.addDissent(dissent);
    }

    
    public List<Dissent> getAllDissent() {
        return dissentDao.getAllDissent();
    }
}
