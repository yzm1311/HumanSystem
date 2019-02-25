package com.iotek.service;

import com.iotek.entity.Post;

import java.util.List;


public interface PostService {
    public void addPost(Post post);
    public void updatePost(Post post);
    public void deletePost(Post post);
    public List<Post> getAll();
    public Post getPostByPid(int pid);
    public Post getPostByPname(String name);
}
