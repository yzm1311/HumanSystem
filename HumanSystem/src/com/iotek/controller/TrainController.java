package com.iotek.controller;

import com.iotek.entity.Employee;
import com.iotek.entity.Train;
import com.iotek.service.*;

import sun.security.timestamp.TSRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller("TrainController")
public class TrainController {
    @Resource(name = "trainService")
    private TrainService trainService;
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


    @RequestMapping("/getAllEmployeeAndAddTrain.action")
    public String getAllEmployee(HttpSession session){
        List<Employee> employeeList1=employeeService.getAll();
        List<Employee> employeeList=new ArrayList<Employee>();
        for (int i=0;employeeList1.size()>i;i++){
            if (employeeList1.get(i).getState().equals(1)){
                employeeList.add(employeeList1.get(i));

            }
        }
        session.setAttribute("employeeList",employeeList);
        return "addTrain.jsp";
    }
    /*添加培训信息*/
    @RequestMapping("/addTrain.action")
    public String addTrain(Train train,String[] eid, HttpSession session){
        int tid =trainService.addTrain(train);
        Train train1=trainService.getTrainByTid(train.getTid());

        for (int i=0;i<eid.length;i++){
            Employee employee=employeeService.getEmployeeByeid(Integer.parseInt(eid[i]));
            employee.setTrain(train1);
            employeeService.updateTrain(employee);
        }
        return "admin.jsp";
    }
    
    @RequestMapping("/getAllTrain.action")
    public String getAllTrain(HttpSession session){
        List<Train> trainList=trainService.getAllByEmployee();
        session.setAttribute("trainList",trainList);
        return "allTrain.jsp";
    }
    @RequestMapping("getTrainFromEmp.action")
    public String getTrainFromEmp(HttpSession session,Employee employee){
    	 List<Train> trainList=trainService.getAllByEmployee();
         session.setAttribute("trainList",trainList);
        return "getTrainFromEmp.jsp";
    }

    @RequestMapping("/updateT.action")
    public String updateT(Integer tid){
        Train train=trainService.getTrainByTid(tid);
        train.setState(1);
        trainService.updateTrain(train);
        return "getTrainFromEmp.action";
    }
    
    @RequestMapping("/deltrain.action")
    public String deltrain(Integer tid){
    	Train train  = trainService.getTrainByTid(tid);
    	//train.setState(0);
    	//System.out.println(train.toString());
    	//trainService.updateTrain(train);
    	trainService.delTrain(tid);
    	return "allTrain.jsp";
    }
}
