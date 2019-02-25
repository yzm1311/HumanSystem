package com.iotek.dao;

import com.iotek.entity.Post;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("postDao")
public interface PostDao {
    public void addPost(Post post);
    public void updatePost(Post post);
    public void deletePost(Post post);
    public List<Post> getAll();
    public Post getPostByPid(int pid);
    public Post getPostByPname(String name);
}
