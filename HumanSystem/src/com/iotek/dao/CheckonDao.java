package com.iotek.dao;

import com.iotek.entity.Checkon;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


@Repository("checkonDao")
public interface CheckonDao {
    public void addChechon(Checkon checkon);
    public void updateCheckon(Checkon checkon);
    public void deleteCheckon(Checkon checkon);
    public List<Checkon> getAll();
    public List<Checkon> getCheckonByEid(int Eid);
    public Checkon getCheckonByTid(int kid);
    public List<Checkon> getCheckonByParam(Map<String,Object> map);
}
