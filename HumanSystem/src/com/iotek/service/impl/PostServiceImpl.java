package com.iotek.service.impl;

import com.iotek.dao.PostDao;
import com.iotek.entity.Post;
import com.iotek.service.PostService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("postService")
public class PostServiceImpl implements PostService{

    @Resource(name = "postDao")
    private PostDao postDao;
    public PostDao getPostDao() {
        return postDao;
    }
    public void setPostDao(PostDao postDao) {
        this.postDao = postDao;
    }

    
    public void addPost(Post post) {
         postDao.addPost(post);
    }

    
    public void updatePost(Post post) {
        postDao.updatePost(post);
    }

    
    public void deletePost(Post post) {
        postDao.deletePost(post);

    }

    
    public List<Post> getAll() {
        List<Post> post=postDao.getAll();
        return post;
    }

    
    public Post getPostByPid(int pid) {
        return postDao.getPostByPid(pid);
    }



    
    public Post getPostByPname(String name) {
        return postDao.getPostByPname(name);
    }
}
