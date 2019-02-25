package com.iotek.controller;

import com.iotek.entity.*;
import com.iotek.service.PostService;
import com.iotek.service.RecruitService;
import com.iotek.service.ResumeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller("RecruitController")
public class RecruitController {
    @Resource(name = "recruitService")
    private RecruitService recruitService;
    @Resource(name = "postService")
    private PostService postService;
    @Resource(name = "resumeService")
    private ResumeService resumeService;

    @RequestMapping("/addRecruit.action")
    public String addRecruit(Recruit recruit, Integer pid, HttpSession session) {
        List<Post> postList=postService.getAll();
        session.setAttribute("postList",postList);
        Post post =postService.getPostByPid(pid);
        recruit.setPost(post);
        recruitService.addRecruit(recruit);
        return "admin.jsp";
    }

    /*游客查看招聘信息*/
    @RequestMapping("/showRecruit.action")
    public String lookRecruit(HttpSession session,User user,ModelMap map) {
        User user1=(User)session.getAttribute("user");
        Resume resume4= resumeService.getResumeByUid(user1.getUid());
        /*if (resume4==null){
            map.addAttribute("jj","先创建简历。。");
            return "user.jsp";
        }*/
        List<Recruit> recruitList1 = recruitService.getAll();
        List<Recruit> recruitList=new ArrayList<Recruit>();
        for (int i=0;recruitList1.size()>i;i++){
            if (recruitList1.get(i).getState()==0){
                recruitList.add(recruitList1.get(i));
            }
        }
        session.setAttribute("recruitList", recruitList);
        List<Post> postList = postService.getAll();
        session.setAttribute("postList", postList);

        return "showRecruit.jsp";
    }
    /*查看游客已投简历*/
    @RequestMapping("/showResume.action")
    public String lookResume(HttpSession session) {
        List<Resume> resumeList =resumeService.getAllResume();
        List<Resume> resumes=new ArrayList<Resume>();
        for(int i = 0; resumeList.size()>i; i++) {
            if (resumeList.get(i).getState()==1) {
                resumes.add(resumeList.get(i));
            }
        }

        session.setAttribute("resumes",resumes);
        return "showResume.jsp";
    }
    /*查看游客已参加面试*/
    @RequestMapping("/joinRecruit.action")
    public String joinResume(HttpSession session) {
        List<Resume> resumeList =resumeService.getAllResume();
        List<Resume> resumes=new ArrayList<Resume>();
        for(int i = 0; resumeList.size()>i; i++) {
            if (resumeList.get(i).getState()==2 && resumeList.get(i).getInterview()==2) {
                resumes.add(resumeList.get(i));
            }
        }
        session.setAttribute("resumes", resumes);
        return "joinRecruit.jsp";
    }
    /*录用*/
    @RequestMapping("/hire.action")
    public String Hire(int rid,HttpSession session){
        Resume resume=resumeService.getResumeByRid(rid);

        session.setAttribute("resume",resume);
        Recruit recruit=resume.getRecruit();
        Recruit recruit1=recruitService.getRecruitByReid(recruit.getReid());
        Post post=recruit1.getPost();

        session.setAttribute("post",post);
        Post post1=postService.getPostByPid(post.getPid());

        Dept dept=post1.getDept();

        session.setAttribute("dept",dept);
        return "addEmployee.jsp";
    }
    /*放弃*/
    @RequestMapping("/giveUp.action")
    public String giveUp(int rid,HttpSession session){
        Resume resume=resumeService.getResumeByRid(rid);
        resume.setInterview(4);
        resume.setState(4);
        resumeService.updateResume(resume);
        return "admin.jsp";
    }
   //查看所有的招聘信息
    @RequestMapping("/getAllRecruit.action")
    public String getAllRecruit(HttpSession session){
        List<Recruit> recruitList=recruitService.getAll();
        session.setAttribute("recruitList",recruitList);
        return "showAllRecruit.jsp";
    }
    
    @RequestMapping("/updateRecruit.action")
    public String updateRecruit(Integer reid, ModelMap map){
        Recruit recruit=recruitService.getRecruitByReid(reid);
        recruit.setState(1);
        recruitService.updateRecruit(recruit);
        map.addAttribute("Res","删除成功");
        return "getAllRecruit.action";
    }
    //更新招聘信息
   @RequestMapping("/updateInRec.action")
   public String updateInRec(HttpSession session,Integer reid) {
	   Recruit recruit = recruitService.getRecruitByReid(reid);
	   System.out.println(recruit.toString());
	   session.setAttribute("recruit", recruit);
	   return "updaterecruit.jsp";
   }
   
   @RequestMapping("/fanhui.action")
   public String updateTecr(Recruit recruit) {	 
	   System.out.println(recruit.toString());
	   recruitService.updateRec(recruit);
	   return "getAllRecruit.action";
   }
}
