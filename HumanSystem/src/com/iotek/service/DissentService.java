package com.iotek.service;

import com.iotek.entity.Dissent;

import java.util.List;


public interface DissentService {
    public void addDissent(Dissent dissent);
    public List<Dissent> getAllDissent();
}
