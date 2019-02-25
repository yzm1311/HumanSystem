package com.iotek.dao;

import com.iotek.entity.Rwandph;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


@Repository("rwandphDao")
public interface RwandphDao {
    public void addRwandph(Rwandph rwandph);
    public void updateRwandph(Rwandph rwandph);
    public void deleteRwandph(int  rpid);
    public List<Rwandph> getAll();
    public Rwandph getRwandphRpid(int rpid);
    public List<Rwandph> getRwandEid(int eid);
    public List<Rwandph> getRwandphByParam(Map<String,Object> map);
}
