package com.iotek.controller;

import com.iotek.entity.Dept;
import com.iotek.entity.Employee;
import com.iotek.entity.Post;
import com.iotek.service.DeptSevice;
import com.iotek.service.EmployeeService;
import com.iotek.service.PostService;
import com.mchange.v2.async.StrandedTaskReporting;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller("PostController")
public class PostController {
    @Resource(name = "empolyeeService")
    private EmployeeService employeeService;
    @Resource(name = "postService")
    private PostService postService;
    @Resource(name = "deptService")
    private DeptSevice deptSevice;

    @RequestMapping("addPost.action")
    public String addPost(Post post,String dname, String pname, HttpSession session,ModelMap map){
        Dept dept=deptSevice.getDeptBydname(dname);
        post.setDept(dept);
        Post post2 = postService.getPostByPname(pname);
        if(post2!=null) {
        	map.addAttribute("tsame", "已经有相同的职位了");
        	return "addPost.jsp";
        }else {
        	 postService.addPost(post);
             List<Post> postList=postService.getAll();
             session.setAttribute("postList",postList);
        }
       
        return "admin.jsp";
    }

    @RequestMapping("lookDept.action")
    public String lookDept(HttpSession session){
        List<Dept> deptList=deptSevice.getAll();
        session.setAttribute("deptList",deptList);
        return "addPost.jsp";
    }

    @RequestMapping("/getAllPost.action")
    public String getAllPost(HttpSession session){
        List<Post> postList=postService.getAll();
        session.setAttribute("postList",postList);
        return "showPost.jsp";
    }

    @RequestMapping("/getPost.action")
    public String getPost(HttpSession session,Integer pid){
    	/*System.out.println(pname);
    	String name = request.getParameter("pname");
    	System.out.println(name);*/
        System.out.println(pid+"PIDPDPDPPD");    
        Post  post = postService.getPostByPid(pid);      
        session.setAttribute("post",post);
        return "updatePost.jsp";
    }

    @RequestMapping("/updatePost.action")
    public String updatePost(HttpSession session,Post post,String pname,ModelMap map,HttpServletRequest request){
    	System.out.println(pname);
    	List<Post> list = postService.getAll();
    	for(Post post2 :list) {
    		System.out.println(post2.toString());
    		if(pname.equals(post2.getPname())) {
    			map.addAttribute("same","相同的dd");
    			return "updatePost.jsp";
    		}
    	}
        postService.updatePost(post);
        return "getAllPost.action";
    }

    @RequestMapping("/deletePost.action")
    public String deletePost(HttpSession session, Integer pid, ModelMap map){
        Post post=postService.getPostByPid(pid);
        List<Employee> list=employeeService.getEmployeeByPid(pid);
        if (list.size()>0){
            map.addAttribute("DPF","该部门下面有人，不能删除");
        }else {
            postService.deletePost(post);
        }
        return "getAllPost.action";
    }

    @RequestMapping("/getAllPost1.action")
    public String getAllPost1(HttpSession session){
        List<Post> postList=postService.getAll();
        session.setAttribute("postList",postList);
        return "showAllPost1.jsp";
    }
}
