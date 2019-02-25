package com.iotek.service.impl;

import com.iotek.dao.UserDao;
import com.iotek.entity.User;
import com.iotek.service.UserService;

import org.apache.tomcat.util.buf.UDecoder;
import org.springframework.stereotype.Service;

import java.util.List;

import javax.annotation.Resource;


@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource(name = "userDao")
    private UserDao userDao;
    public UserDao getUserDao() {return userDao;}
    public void setUserDao(UserDao userDao) {this.userDao = userDao;}


    
    public User getUserByNameAndPwd(User user) {
        return userDao.getUserByNameAndPwd(user);
    }

    
    public void addUser(User user) {
        userDao.addUser(user);
    }

    
    public User userInfo(int uid) {
        return userDao.userInfo(uid);
    }

    
    public User getUserByUserName(String userName) {
        return userDao.getUserByUserName(userName);
    }

    
    public void updateStaate(User user) {
         userDao.updateStaate(user);
    }
	@Override
	public List<User> getAllU() {
	  List<User> uList= userDao.getAllU();
		return uList;
	}
	@Override
	public void updatepasswordByname(User user) {
		
		userDao.updatepasswordByname(user);
		
	}
}
