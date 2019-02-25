package com.iotek.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;


public class Dept implements Serializable{
    private Integer did;
    private String dname;
    private Post post;
    private Set<Post> postSet=new HashSet<Post>();

    public Set<Post> getPostSet() {
        return postSet;
    }

    public void setPostSet(Set<Post> postSet) {
        this.postSet = postSet;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public Dept() {
    }

    public Dept(String dname) {
        this.dname = dname;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

	@Override
	public String toString() {
		return "Dept [did=" + did + ", dname=" + dname + ", post=" + post + ", postSet=" + postSet + "]";
	}

}
