package com.iotek.controller;

import com.iotek.entity.*;
import com.iotek.service.*;
import com.sun.org.apache.xpath.internal.operations.Mod;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller("UserController")
public class UserController{
    @Resource(name = "userService")
    private UserService userService;
    @Resource(name = "resumeService")
    private ResumeService resumeService;
    @Resource(name = "deptService")
    private DeptSevice deptSevice;
    @Resource(name = "postService")
    private PostService postService;
    @Resource(name = "recruitService")
    private RecruitService recruitService;
    @Resource(name = "empolyeeService")
    private EmployeeService employeeService;


    @RequestMapping("/login.action")
    public String login(User user,HttpSession session,ModelMap map) {
        User user1 = userService.getUserByNameAndPwd(user);
        if (user1 != null) {
            if (user1.getState()==0) {
                User user2=userService.userInfo(user1.getUid());
                Resume resume=resumeService.getResumeByUid(user1.getUid());
                session.setAttribute("resume",resume);
                session.setAttribute("user",user1);
                return "user.jsp";
            }
            if(user1.getState()==1){
                session.setAttribute("user",user1);
                Employee employee=employeeService.getEmployeeByuid(user1.getUid());
                session.setAttribute("employee",employee);
                return "employee.jsp";
            }
            if (user1.getState()==2){
                List<Dept> deptList=deptSevice.getAll();
                session.setAttribute("deptList",deptList);

                List<Post> postList=postService.getAll();
                session.setAttribute("postList",postList);

                List<Recruit> recruitList=recruitService.getAll();
                session.setAttribute("recruitList",recruitList);

                List<Employee> employeeList1=employeeService.getAll();
                List<Employee> employeeList=new ArrayList<Employee>();
                for (int i=0;employeeList1.size()>i;i++){
                    if (employeeList1.get(i).getState().equals(1)){
                        employeeList.add(employeeList1.get(i));

                    }
                }
                session.setAttribute("employeeList",employeeList);

                return "admin.jsp";
            }
        }
        map.addAttribute("error","用户名或者密码错误");
        return "login.jsp";
    }
    @RequestMapping("/register.action")
    public String register(HttpServletRequest request,HttpSession session,ModelMap map) {
	     String name = request.getParameter("uname");
	     
         User user2 = userService.getUserByUserName(name);
         if(user2!=null) {
        	 map.addAttribute("sd1","不合法的用户名"); 
        	 return "register.jsp";
         }else {
        	 String password = request.getParameter("upasswd");
        	 String repasswrod = request.getParameter("upasswd1");
        	 if(password.equals(repasswrod)) {
        		 User user = new User();
        		 user.setUname(name);
        		 user.setUpasswd(password);
        		 userService.addUser(user);
                 map.addAttribute("sd","注册成功");
        	 }
        	
         }
       
        return "login.jsp";

    }

    /*通知面试 Interview面试状态 4 没通知，1为通知 2为游客查看*/
    @RequestMapping("/Informinterview.action")
    public String Informinterview(Integer rid,HttpSession session,ModelMap map){
       Resume resume= resumeService.getResumeByRid(rid);
        if(resume.getInterview()==4){
           resume.setInterview(1);
           resume.setState(2);
           resumeService.updateResume(resume);
           map.addAttribute("Tinform","通知成功");
       }else {
           map.addAttribute("Finform","您已经通知过了");
       }
        return"admin.jsp";
    }
    /*游客查看面试信息*/
    @RequestMapping("/lookInterview.action")
    public String lookInterview(User user,HttpSession session,ModelMap map){
        User user1=(User)session.getAttribute("user");
        /* User user3=new User();*/
        Resume resume4= resumeService.getResumeByUid(user1.getUid());
        if (resume4==null){
            map.addAttribute("jj","先创建简历。。");
            return "user.jsp";
        }
        User user2=userService.userInfo(user1.getUid());
        Resume resume=user2.getResume();
        if (resume.getInterview()==1){
            Resume resume1=resumeService.getResumeByRid(resume.getRid());
            Recruit recruit=resume1.getRecruit();
            System.out.println(recruit.getRname());
            Recruit recruit1=recruitService.getRecruitByReid(recruit.getReid());
            Post post=recruit1.getPost();
            recruit.setPost(post);
            session.setAttribute("recruit",recruit);
           }

        return "lookInterview.jsp";
    }
    /*游客确定面试*/
    @RequestMapping("/confirmRecruit.action")
    public String confirmRecruit(HttpSession session,ModelMap map){
        User user1=(User)session.getAttribute("user");
        User user2=userService.userInfo(user1.getUid());
        Resume resume=user2.getResume();
        if (resume.getInterview()==1){
                resume.setInterview(2);
                resumeService.updateResume(resume);
                map.addAttribute("s_confirm","请记得按时参加面试");
            }else {
                map.addAttribute("f_confirm","您已经确认过了");
            }
        return "user.jsp";
    }
    
    /*游客放弃面试*/
    @RequestMapping("/failRecruit.action")
    public String failRecruit(HttpSession session,ModelMap map){
        User user1=(User)session.getAttribute("user");
       
        User user2=userService.userInfo(user1.getUid());
      
        Resume resume=user2.getResume();
        if (resume.getInterview()==1){
        	
        	    resume.setState(4);      	  
                resume.setInterview(4);
 
                resumeService.updateResume(resume);
                map.addAttribute("b_confirm","成功放弃面试");
            }else {
                map.addAttribute("f_confirm","您已经确认过了");
            }
        return "user.jsp";
    }
    @RequestMapping("/updatepassword.action")
    public  String updatepassword(ModelMap map ,HttpServletRequest request) throws Exception{
    	String name = request.getParameter("name");   	
        User user2 = userService.getUserByUserName(name);
        if(user2==null) {
        	map.addAttribute("fail", "用户名不存在");
        	return "updatepassword.jsp";
        }else {
    	System.out.println(user2.toString());
    	String password = request.getParameter("pd");
    	String repassword = request.getParameter("repd");
    	System.out.println(password +"--"+repassword);
    	if(password.equals(repassword)) {
    		user2.setUpasswd(password);
    		userService.updatepasswordByname(user2);
    		System.out.println(user2.toString());   		
    	}else {
    		return "updatepassword.jsp";
    	}  	
		return "login.jsp";
        }
    }
}
