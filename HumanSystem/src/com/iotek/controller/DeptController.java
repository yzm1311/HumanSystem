package com.iotek.controller;

import com.iotek.entity.Dept;
import com.iotek.entity.Post;
import com.iotek.service.DeptSevice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Set;


@Controller("DeptController")
public class DeptController {
    @Resource(name = "deptService")
    private DeptSevice deptSevice;

    @RequestMapping("/addDept.action")
    public String addDept(Dept dept, HttpSession session,ModelMap map){
        Dept dept1=deptSevice.getDeptBydname(dept.getDname());
        if (dept1!=null){     
                map.addAttribute("same","已有该部门不能重复添加");
            }else {
                deptSevice.addDept(dept);
                List<Dept> list1=deptSevice.getAll();
                session.setAttribute("list1",list1);
                session.setAttribute("deptList",list1);
        }
        return "admin.jsp";
    }

    @RequestMapping("/getAlldept.action")
    public String getAlldept(HttpSession session){
        List<Dept> deptList=deptSevice.getAll();
        session.setAttribute("deptList",deptList);
        return "showAllDept.jsp";
    }
    
    @RequestMapping("/getDeptInfo.action")
    public String getDeptInfo(String did,HttpSession session){
        Dept dept=deptSevice.getDeptByDId(Integer.parseInt(did));
        session.setAttribute("dept",dept);
        return "showDeptPost.jsp";
    }
    /*删除*/
    @RequestMapping("/deleteDept.action")
    public String deleteDept(Integer did,ModelMap map){

        Dept dept=deptSevice.getDeptByDId(did);
        Dept dept1=deptSevice.getDeptBydname1(dept.getDname());
        if (dept1==null){
            System.out.println("kongde");
            deptSevice.deleteDept(did);
        }else {
            map.addAttribute("dS","部门下面有职位不能删除");
        }
        return "getAlldept.action";
    }

    @RequestMapping("/getDept.action")
    public String getDept(Integer did,HttpSession session){
        Dept dept=deptSevice.getDeptByDId(did);
        session.setAttribute("dept",dept);
        return "updateDept.jsp";
    }

    @RequestMapping("/updateDept.action")
    public String updateDept(Dept dept,ModelMap map,String dname){
    	//Dept dept1=deptSevice.getDeptBydname(dept.getDname());
    	System.out.println(dname);
    	Dept dept1 = deptSevice.getDeptBydname(dname);
    	//System.out.println(dept1.toString());
        if (dept1!=null){     
                map.addAttribute("thesame","已有该部门不能修改");
                return "updateDept.jsp";
        }else {
        	 deptSevice.updateDept(dept);
		}      
        return "getAlldept.action";
    }

    @RequestMapping("/selectDept.action")
    @ResponseBody
    public Set<Post> select(HttpSession session, String dname){
        Dept dept=deptSevice.getDeptBydname1(dname);
        return dept.getPostSet();
    }


}
