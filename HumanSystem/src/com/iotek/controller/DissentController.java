package com.iotek.controller;

import com.iotek.entity.Dissent;
import com.iotek.entity.Employee;
import com.iotek.entity.Rwandph;
import com.iotek.service.DissentService;
import com.iotek.service.RwandphService;

import org.eclipse.jdt.internal.compiler.classfmt.NonNullDefaultAwareTypeAnnotationWalker;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.Date;
import java.util.List;


@Controller("DissentController")
public class DissentController {
    @Resource(name = "dissentService")
    private DissentService dissentService;
    @Resource(name="rwandphService")
    private RwandphService rwandphService;
    @RequestMapping("/addDissent.action")
    public String addDissent(Dissent dissent, HttpSession session, ModelMap map){
    	
        Employee employee= (Employee) session.getAttribute("employee");
        dissent.setEmployee(employee);
        dissentService.addDissent(dissent);
        map.addAttribute("Dss","异议成功已反馈给管理员");
        return "showEmployeeSalary.jsp";
    }

    @RequestMapping("/getDissent.action")
    public String getDissent(HttpSession session){
        List<Dissent> dissentList=dissentService.getAllDissent();
        session.setAttribute("dissentList",dissentList);
        return "showDissent.jsp";
    }
    
    //处理奖惩
    @RequestMapping("/deal.action")
    public String deal(HttpServletRequest request,String index,String eid,String str) {
    	 List<Dissent> dissentList=dissentService.getAllDissent();
         System.out.println("index"+index+"--"+eid+"--"+str);
         String index1 = request.getParameter("index");
         String id = request.getParameter("eid");
         
         int eid1 = Integer.valueOf(id);//转换id
         String mo = request.getParameter("str");
         double money = Double.parseDouble(mo);
         int i = Integer.valueOf(index1);
       
         Rwandph rwandph = new Rwandph();
         rwandph.setRptime(new Date());
         rwandph.setMoney(money);	      
         rwandph.setCause(dissentList.get(i).getExcuse());
         rwandph.setEmployee(dissentList.get(i).getEmployee());      
         rwandphService.addRwandph(rwandph);
    	return "admin.jsp";    	
    }
    
}
