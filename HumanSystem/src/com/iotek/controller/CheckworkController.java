package com.iotek.controller;

import com.iotek.entity.Checkon;
import com.iotek.entity.Employee;
import com.iotek.service.CheckonService;
import com.iotek.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;



@Controller("CheckworkController")
public class CheckworkController {
    @Resource(name = "empolyeeService")
    private EmployeeService employeeService;
    @Resource(name = "checkonService")
    private CheckonService checkonService;

    //上班签到
    @RequestMapping("/addCheckon.action")
    public String addCheckon(HttpSession session, ModelMap map,Model modle) throws ParseException {
    	
        Employee employee = (Employee) session.getAttribute("employee");
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println("jj");
        System.out.println(employee.toString());
        String source = "9:00";//上班规定时间
        double h = 0;
        Date date = null;
        Date date1 = null;
        try {
            date = sdf.parse(source);
            date1 = sdf.parse(sdf.format(new Date()));
            h = (date1.getTime() - date.getTime()) / 1000 / 3600.0;

        } catch (ParseException e) {
            e.printStackTrace();
        }
     
        System.out.println(employee.getEid());
        List<Checkon> checkonList = checkonService.getCheckonByEid(employee.getEid());
        if (checkonList.size() != 0) {
            Checkon checkon = checkonList.get(checkonList.size() - 1);
            Date date2 = sdf1.parse(sdf1.format(checkon.getStarttime()));
            Date date3 = sdf1.parse(sdf1.format(new Date()));
            if (!date2.equals(date3)) {
                Checkon checkon1 = new Checkon();
                checkon1.setStarttime(new Date());
                checkon.setGowork_state("正常");
                if (0 < h && h <= 3) {
                    checkon1.setGowork_state("迟到");
                } else if (h > 3) {
                    checkon1.setGowork_state("旷工");
                }

                checkon1.setEmployee(employee);
                checkonService.addChechon(checkon1);
                Checkon checkon2 = checkonService.getCheckonByTid(checkon1.getKid());
                modle.addAttribute("checkon2", checkon2);
             
               // session.setAttribute("checkon2", checkon2);
                map.addAttribute("success", "签到成功");
            } else {

                map.addAttribute("defeated", "不要在打卡了，小心我打爆你");
            }

            return "showCheckon.jsp";
        }

        Checkon checkon = new Checkon();
        checkon.setStarttime(new Date());
        checkon.setGowork_state("正常");
        if (0 < h && h <= 3) {
            checkon.setGowork_state("迟到");
        }
        if (h > 3) {
            checkon.setGowork_state("旷工");
        }
        checkon.setEmployee(employee);
        checkonService.addChechon(checkon);
        Checkon checkon2 = checkonService.getCheckonByTid(checkon.getKid());
      //session.setAttribute("checkon2", checkon2);
        modle.addAttribute("checkon2", checkon2);
        map.addAttribute("success", "签到成功");
        return "showCheckon.jsp";
    }

    /*下班签到*/
    @RequestMapping("/updateCheckon.action")
    public String updateCheckon(HttpSession session, ModelMap map,Model modle) throws ParseException {
        Employee employee = (Employee) session.getAttribute("employee");
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        String source = "17:00";//下班规定时间
        double h = 0;
        Date date = null;
        Date date1 = null;
        try {
            date = sdf.parse(source);
            date1 = sdf.parse(sdf.format(new Date()));
            h = (date.getTime() - date1.getTime()) / 1000 / 3600.0;
        } catch (ParseException e) {
            e.printStackTrace();
        }
       /* Checkon checkon = checkonService.getCheckonByEid(employee.getEid());
        if(checkon.equals(""))*/
        List<Checkon> checkonList = checkonService.getCheckonByEid(employee.getEid());
        
        if (checkonList.size() != 0) {
            Checkon checkon = checkonList.get(checkonList.size() - 1);
            if (checkon.getStarttime() != null && checkon.getEndtime() == null) {
                checkon.setEndtime(new Date());
                checkon.setUpwork_state("正常");
                if (0 < h && h <= 3) {
                    checkon.setUpwork_state("早退");
                } else if (h > 3) {
                    checkon.setUpwork_state("旷工");
                }
                checkonService.updateCheckon(checkon);
                Checkon checkon2 = checkonService.getCheckonByTid(checkon.getKid());
              //  session.setAttribute("checkon2", checkon2);
                modle.addAttribute("checkon2", checkon2);
                
            } else {
                map.addAttribute("checkon", "请先打上班卡");
            }
        }
        map.addAttribute("success", "不要在打卡了，小心我打爆你");
        return "showCheckon.jsp";
    }


    @RequestMapping("/getAllCheckon.action")
    public String getAllCheckon(HttpSession session) {
        List<Checkon> list = checkonService.getAll();
        session.setAttribute("list",list);
        return "showAllCheck.jsp";
    }

    @RequestMapping("/showEmpC.action")
    public String showEmpC(HttpSession session,Employee employee){
        Employee employee1=(Employee) session.getAttribute("employee");
        List<Checkon> checkonList= checkonService.getCheckonByEid(employee1.getEid());
        session.setAttribute("checkonList",checkonList);
        return "showEmpC.jsp";
    }
}
