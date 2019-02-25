package com.iotek.service;

import com.iotek.entity.Checkon;

import java.util.List;
import java.util.Map;


public interface CheckonService {
    public void addChechon(Checkon checkon);
    public void updateCheckon(Checkon checkon);
    public void deleteCheckon(Checkon checkon);
    public List<Checkon> getAll();
    public List<Checkon> getCheckonByEid(int Eid);
    public Checkon getCheckonByTid(int kid);
    public List<Checkon> getCheckonByParam(Map<String,Object> map);
}
