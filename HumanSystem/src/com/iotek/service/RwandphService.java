package com.iotek.service;

import com.iotek.entity.Rwandph;

import java.util.List;
import java.util.Map;


public interface RwandphService {
    public void addRwandph(Rwandph rwandph);
    public void updateRwandph(Rwandph rwandph);
    public void deleteRwandph(int rpid);
    public List<Rwandph> getAll();
     public List<Rwandph>  getRwandphEid(int eid);
    public Rwandph getRwandphRpid(int rpid);
    public List<Rwandph> getRwandphByParam(Map<String,Object> map);
}
