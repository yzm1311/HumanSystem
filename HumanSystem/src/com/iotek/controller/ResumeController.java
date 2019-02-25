package com.iotek.controller;

import com.iotek.entity.Recruit;
import com.iotek.entity.Resume;
import com.iotek.entity.User;
import com.iotek.service.RecruitService;
import com.iotek.service.ResumeService;
import com.iotek.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller("ResumeController")
public class ResumeController {

    @Resource(name = "resumeService")
    private ResumeService resumeService;
    @Resource(name = "userService")
    private UserService userService;
    @Resource(name = "recruitService")
    private RecruitService recruitService;

   //简历创建，state ==4 ， interview==4
    @RequestMapping("/addResume.action")
    public String addResume(Resume resume, HttpSession session) {
        User user = (User) session.getAttribute("user");
        resume.setUser(user);
        System.out.println("--================:"+resume.toString());
        Resume resume1 = resumeService.getResumeByUid(user.getUid());
        if (resume1 == null) {
            resumeService.addResume(resume);
            resume1 = resumeService.getResumeByUid(user.getUid());
        }
        session.setAttribute("resume", resume1);
        User user1 = userService.userInfo(user.getUid());
        session.setAttribute("user", user1);
        return "user.jsp";
    }

    @RequestMapping("/updateResume.action")
    public String updateResume(Resume resume, HttpSession session,User user,ModelMap map) {
        User user1=(User)session.getAttribute("user");
        Resume resume4= resumeService.getResumeByUid(user1.getUid());
        if (resume4.getState()==1){
            map.addAttribute("kk","简历已投递出去不能进行修改。。");
            return "user.jsp";
        }
        Resume resume1 = (Resume) session.getAttribute("resume");
        resume.setRid(resume1.getRid());
        resumeService.updateResume(resume);
        return "addResume.action";
    }

    /*投递简历 State简历投递状态 4为不投递，1为已投递*/
    @RequestMapping("/seedResume.action")
    public String appRecruit(int reid, HttpSession session, ModelMap map) {
        Recruit recruit = (Recruit) recruitService.getRecruitByReid(reid);
        Resume resume1 = (Resume) session.getAttribute("resume");
        if (resume1==null){
            map.addAttribute("jj","先创建简历。。");
        
            return "user.jsp";
        }
        if (resume1.getState().equals(1)||resume1.getState().equals(2)) {
            map.addAttribute("fail", "您已经投过简历了，不能重复投递");
            return "user.jsp";
        }else {
            resume1.setState(1);
            resume1.setReid(reid);
            resumeService.updateResume(resume1);
            map.addAttribute("success", "投递简历成功");
            return "user.jsp";
        }
    }
}



