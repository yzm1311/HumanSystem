package com.iotek.controller;

import com.iotek.entity.Checkon;
import com.iotek.entity.Employee;
import com.iotek.entity.Rwandph;
import com.iotek.entity.Salary;
import com.iotek.service.CheckonService;
import com.iotek.service.EmployeeService;
import com.iotek.service.RwandphService;
import com.iotek.service.SalaryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller("SalaryController")
public class SalaryController{
    @Resource(name = "salaryService")
    private SalaryService salaryService;
    @Resource(name = "empolyeeService")
    private EmployeeService employeeService;
    @Resource(name = "checkonService")
    private CheckonService checkonService;
    @Resource(name = "rwandphService")
    private RwandphService rwandphService;

    @RequestMapping("addSalary.action")
    public String addSalary(HttpSession session, ModelMap map, Integer eid, Double basic, Double bonus, String month){
        Employee employee=employeeService.getEmployeeByeid(eid);
        SimpleDateFormat sdf = new SimpleDateFormat("dd");
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM");
        Date date=new Date();
        String date1=sdf.format(date);//把目前时间转换为字符串（只有天数的字符串）
        String month1=sdf1.format(date);//把目前时间转换为字符串（只有年+月）
        Map<String,Object> paramMap1=new HashMap<String,Object>();
        paramMap1.put("eid",eid);
        paramMap1.put("date","%"+month1+"%");
        System.out.println("date1"+date1);
        if (date1.equals("01")){
            Salary salary1=salaryService.getSalaryByEidAndMonth(paramMap1);
            if(salary1==null) {
                Map<String, Object> paramMap2 = new HashMap<String, Object>();
                paramMap2.put("eid",eid);
                paramMap2.put("month","%" + month + "%");
                List<Checkon> checkonList = checkonService.getCheckonByParam(paramMap2);
                /* System.out.println(checkonList.size()+"kaoqqinnnn");*/
                //List<Rwandph> rwandphList = rwandphService.getRwandphByParam(paramMap2);
                List<Rwandph> rwandphList = rwandphService.getRwandphEid(eid);
                /*System.out.println(rwandphList+"jiangchencddd");*/
                double lateMoney = 0;
                double earlyMoney = 0;
                double absentMoney=0;
                double avg = Math.round(basic / 22.0);
                double stayupMoney = 0;
                double reward = 0;
                double penalty = 0;
                double rwandphMoney=0;
                int day = 0;
                Salary salary = new Salary();
                if (checkonList != null) {
                    for (Checkon checkon : checkonList) {
                    	System.out.println("kk");
                        System.out.println(checkon.toString());
                        System.out.println("KK");
                     
                        System.out.println(checkon.getUpwork_state()+"2");
                        if ((checkon.getGowork_state().equals("迟到"))||(checkon.getGowork_state().equals("旷工"))) {
                          
                        	lateMoney += 30;
                        }
                        //checkon.getUpwork_state().equals("早退")||checkon.getUpwork_state().equals("旷工")||
                        if ((checkon.getUpwork_state()==null)) {
                           System.out.println(checkon.getUpwork_state());
                        	earlyMoney += 30;
                        }
                        if((!(checkon.getUpwork_state()==null))&&((checkon.getUpwork_state().equals("旷工"))||(checkon.getUpwork_state().equals("早退")))){
                        	earlyMoney += 30;   	
                        }
                     /*if (checkon.getGowork_state().equals("旷工")||checkon.getGowork_state().equals("")) {
                           System.out.println(checkon.getGowork_state());
                        	absentMoney += avg;
                        }
                        if (checkon.getUpwork_state().equals("旷工")||checkon.getUpwork_state().equals("")){
                            System.out.println(checkon.getUpwork_state());
                        	absentMoney += avg;
                        }*/
                        day++;
                    }
                }
                salary.setBasic(basic -( day *( lateMoney + earlyMoney + absentMoney)));
                System.out.println(salary.getBasic());
                if ( rwandphList!= null) {
                    for (Rwandph rwandph : rwandphList) {
                      System.out.println(rwandph.toString());
                        rwandphMoney +=rwandph.getMoney();
                        System.out.println(rwandph.getMoney());
                    }
                    salary.setPunish(rwandphMoney);
                    System.out.println(salary.getPunish());
                }
                salary.setBonus(bonus);
                salary.setSocial(200.0);
                salary.setTotalSal(salary.getBasic() + salary.getBonus() + salary.getPunish() + salary.getSocial());
                salary.setAccountTime(new Date());
                salary.setEmployee(employee);
                salaryService.addSalary(salary);
               Salary salary2= salaryService.getBySid(salary.getSid());
               session.setAttribute("salary2" ,salary2);
                map.addAttribute("account","工资发放成功");
            }else {
                map.addAttribute("resal","这个月已经发放过了");
            }
        }else {
            map.addAttribute("sal","今天不是工资发放日");
        }

        return "showSalary.jsp";
    }
   


    @RequestMapping("/getAllSAndE.action")
    public String getAllSAndE(HttpSession session){
        List<Employee> employeeList1=employeeService.getAll();
        List<Employee> employeeList=new ArrayList<Employee>();
        for (int i=0;employeeList1.size()>i;i++){
            if (employeeList1.get(i).getState().equals(1)){
                employeeList.add(employeeList1.get(i));
            }
        }
        session.setAttribute("employeeList",employeeList);
        return "addSalary.jsp";
    }
}
