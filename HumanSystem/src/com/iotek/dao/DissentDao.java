package com.iotek.dao;

import com.iotek.entity.Dissent;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("dissentDao")
public interface DissentDao {
    public void addDissent(Dissent dissent);
    public List<Dissent> getAllDissent();
}
