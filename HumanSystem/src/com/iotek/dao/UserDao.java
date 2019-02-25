package com.iotek.dao;

import com.iotek.entity.User;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public interface UserDao {
    public User getUserByNameAndPwd(User user);
    public void addUser(User user);
    public User userInfo(int uid);
    public User getUserByUserName(String userName);
    public void updatepasswordByname(User user);
    public void updateStaate(User user);
    public List<User> getAllU();
}
