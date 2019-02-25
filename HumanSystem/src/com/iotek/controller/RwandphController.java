package com.iotek.controller;

import com.iotek.entity.Employee;
import com.iotek.entity.Rwandph;
import com.iotek.service.EmployeeService;
import com.iotek.service.RwandphService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller("RwandphController")
public class RwandphController {
    @Resource(name = "empolyeeService")
    private EmployeeService employeeService;
    @Resource(name = "rwandphService")
    private RwandphService rwandphService;

    @RequestMapping("/getAllEmployeeAndaddRwandph.action")
    public String getAllEmployeeAndaddRwandph(HttpSession session){
        List<Employee> employeeList1=employeeService.getAll();
        List<Employee> employeeList=new ArrayList<Employee>();
        for (int i=0;employeeList1.size()>i;i++){
            if (employeeList1.get(i).getState().equals(1)){
                employeeList.add(employeeList1.get(i));
            }
        }
        session.setAttribute("employeeList",employeeList);
        return "addRwandph.jsp";
    }
    @RequestMapping("/addRwandph.action")
    public String addRwandph(Rwandph rwandph, int eid, ModelMap map){
        Employee employee=employeeService.getEmployeeByeid(eid);
        rwandph.setEmployee(employee);
        rwandphService.addRwandph(rwandph);
        map.addAttribute("RwS","添加成功");
        return "admin.jsp";
    }

    @RequestMapping("/getAllRP.action")
    public String getAllRP(HttpSession session){
       List<Rwandph> rwandphList=rwandphService.getAll();
        session.setAttribute("rwandphList",rwandphList);
        return "showAllRP.jsp";
    }

    @RequestMapping("/getRwandph.action")
    public String getRwandph(Integer rpid, HttpSession session){
        Rwandph rwandph=rwandphService.getRwandphRpid(rpid);
        
        session.setAttribute("rwandph",rwandph);
        return "updateRwandph.jsp";
    }

    @RequestMapping("/updateRwandph.action")
    public String updateAward(Integer eid,Rwandph rwandph ,HttpSession session){
      //  System.out.println(eid);
      //  System.out.println("点击前"+rwandph.getRptime());
        Employee employee=employeeService.getEmployeeByeid(eid);
        session.setAttribute("employee", employee);
        rwandph.setEmployee(employee);
        session.setAttribute("rwandph.getRptime()", rwandph.getRptime());
        rwandphService.updateRwandph(rwandph);
      //  System.out.println("点击后"+rwandph.getRptime());
        return "getAllRP.action";
    }

    @RequestMapping("/deleteRwandph.action")
    public String deleteRwandph(Integer rpid){
        System.out.println(rpid+"rpid");
        rwandphService.deleteRwandph(rpid);
        return "getAllRP.action";
    }
    
    @RequestMapping("/getown.action")
    public String getown(Integer eid,HttpSession session) {
    	List<Rwandph> rwandphList = rwandphService.getRwandphEid(eid);
    	
    	session .setAttribute("rwandphList", rwandphList);
    	return "showown.jsp";
    }
}
