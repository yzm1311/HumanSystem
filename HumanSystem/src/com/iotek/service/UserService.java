package com.iotek.service;

import java.util.List;

import com.iotek.entity.User;


public interface UserService {
    public User getUserByNameAndPwd(User user);
    public void addUser(User user);
    public User userInfo(int uid);
    public User getUserByUserName(String userName);
    public void updatepasswordByname(User user);
    public void updateStaate(User user);   
    public List<User> getAllU();
}
