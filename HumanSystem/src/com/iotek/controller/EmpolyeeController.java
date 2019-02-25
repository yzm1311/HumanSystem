package com.iotek.controller;

import com.iotek.entity.*;
import com.iotek.service.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller("EmpolyeeController")
public class EmpolyeeController {
    @Resource(name = "empolyeeService")
    private EmployeeService employeeService;
    @Resource(name = "recruitService")
    private RecruitService recruitService;
    @Resource(name = "postService")
    private PostService postService;
    @Resource(name = "deptService")
    private DeptSevice deptSevice;
    @Resource(name = "resumeService")
    private ResumeService resumeService;
    @Resource(name = "salaryService")
    private SalaryService salaryService;
    @Resource(name = "userService")
    private UserService userService;
    @Resource(name = "checkonService")
    private CheckonService checkonService;

    @RequestMapping("/addEmployee.action")
    public String addEmployee(Employee employee, String pname, HttpSession session){
        Dept dept=(Dept) session.getAttribute("dept");
        Post post=(Post) session.getAttribute("post");
        Resume resume=(Resume)session.getAttribute("resume");
        Resume resume1=resumeService.getResumeByRid(resume.getRid());
        User user=resume1.getUser();

        employee.setUser(user);
        employee.setPost(post);
        employee.setDept(dept);
        employeeService.addEmployee(employee);
        user.setState(1);
        resume.setInterview(4);
        resume.setState(4);
        userService.updateStaate(user);
        resumeService.updateResume(resume);
        return "admin.jsp";
    }

    @RequestMapping("/getEmployee.action")
    public String getEmployee(Employee employee,HttpSession session){
        List<Employee> employeeList1=employeeService.getAll();
        List<Employee> employeeList=new ArrayList<Employee>();
        for (int i=0;employeeList1.size()>i;i++){
            if (employeeList1.get(i).getState().equals(1)){
                employeeList.add(employeeList1.get(i));

            }
        }
        session.setAttribute("employeeList",employeeList);
        for (int i=0;employeeList.size()>i;i++){
            Dept dept=employeeList.get(i).getDept();
        }
        return "allEmployee.jsp";
    }

    @RequestMapping("/updateEmployee.action")
    public String updateEmployee(HttpSession session,Integer eid){
        Employee employee=employeeService.getEmployeeByeid(eid);
        session.setAttribute("employee",employee);
        List<Dept> deptList=deptSevice.getAll();
        session.setAttribute("deptList",deptList);
        return "updateEmployee.jsp";
    }

    @RequestMapping("/getEmployeeSalary.action")
    public String getEmployeeSalary(HttpSession session,Employee employee){
        Employee employee1=(Employee) session.getAttribute("employee");
        List<Salary> salaryList=salaryService.getByEid(employee1.getEid());
        session.setAttribute("salaryList",salaryList);
        return "showEmployeeSalary.jsp";
    }

    @RequestMapping("/changeEmp.action")
    public String changeEmp(HttpSession session,Integer pid, Integer eid,String pname, ModelMap map){
        Employee employee=employeeService.getEmployeeByeid(eid);
        Post post=postService.getPostByPid(pid);
        Dept dept=post.getDept();
        employee.setDept(dept);
        employee.setPost(post);
        employeeService.updateEmployee(employee);
        map.addAttribute("updatS","修改成功");
        return "getEmployee.action";
    }
    @RequestMapping("/deleteEmployee.action")
    public  String changeEmp(HttpSession sesrsion,Integer eid,ModelMap map){
        Employee employee=employeeService.getEAndUByeid(eid);
        User user=employee.getUser();
        Checkon checkon=new Checkon();
        checkon.setEmployee(employee);
        user.setState(0);
        employee.setState(0);
        userService.updateStaate(user);
        employeeService.updateEandU(employee);
        employeeService.updateEandU(employee);
       // checkonService.deleteCheckon(checkon);
      //  employeeService.deleteEmployee(employee);
        map.addAttribute("deleteS","开除成功");
        return "getEmployee.action";
    }

    @RequestMapping("/getEmp.action")
    public String getEmp(Integer pid, HttpSession session,ModelMap map) {
        List<Employee> empList = employeeService.getEmployeeByPid(pid);
        session.setAttribute("empList",empList);
        return "showEmp.jsp";
    }
    @RequestMapping("/updateInfoEmp.action")
    public String updateInfo(HttpSession session){
        List<Employee> employeeList1=employeeService.getAll();
        List<Employee> employeeList=new ArrayList<Employee>();
        for (int i=0;employeeList1.size()>i;i++){
            if (employeeList1.get(i).getState().equals(1)){
                employeeList.add(employeeList1.get(i));
            }
        }
        session.setAttribute("employeeList",employeeList);
        for (int i=0;employeeList.size()>i;i++){
            Dept dept=employeeList.get(i).getDept();
        }
        return "updateInfoEmp.jsp";
    }
   //修改员工信息
    @RequestMapping("/updateInfor.action")
    public String updateInfor(HttpSession session,Integer eid) {
      Employee employee=employeeService.getEAndUByeid(eid);
      session.setAttribute("employee",employee);
        return "updateE.jsp";
    }
    @RequestMapping("/update.action")
    public String updat(Employee employee){
        employeeService.updateEmpInfo(employee);
        return "updateInfoEmp.action";
    }

    @RequestMapping("/updateOwnIfo.action")
    public String getOwnInfo(Employee employee,HttpSession session){
        employeeService.updateEmpInfo(employee);
        session.setAttribute("employee",employee);
        return "employee.jsp";
    }
    @RequestMapping("/Own.action")
    public String Own(Integer eid,HttpSession session) {
    	Employee employee = employeeService.getinfo(eid);
    	session.setAttribute("employee", employee);
    	System.out.println(employee.toString());
    	return "showOwnInfo.jsp";
    }
}
