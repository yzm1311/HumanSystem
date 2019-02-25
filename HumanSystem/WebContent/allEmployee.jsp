<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style type="text/css">
  body {
  margin-top:120px;
 font-family: cursive;
}
h{
	font-family: cursive;
	font-size: x-large;
}
 </style>
<head>
    <title>Title</title>
    <style type="text/css">
        a{text-decoration:none;}

    </style>
    
<script type="text/javascript">
   //deleteEmployee.action?eid=${employee.eid}
   function gg(){
	
		 
	   var str = window.prompt("请输入开除原因","丑") 
	   alert(str); 
	   
	   
   }

</script>
</head>
<body>

<table align="center" border="2">
      <tr>
        <td colspan="8">
           <h>员工信息</h>
        </td>
    </tr>
    <tr>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>电话</th>
        <th>Email</th>
        <th>所属部门</th>
        <th>所属职位</th>
        <th colspan="2">操作</th>
    </tr>
    <c:if test="${not empty sessionScope.employeeList}">
        <c:forEach items="${sessionScope.employeeList}" var="employee">
            <tr>
                <td>${employee.ename}</td>
                <td>${employee.sex}</td>
                <td>${employee.age}</td>
                <td>${employee.tel}</td>
                <td>${employee.email}</td>
                <td>${employee.dept.dname}</td>
                <td>${employee.post.pname}</td>
                <td><a href="deleteEmployee.action?eid=${employee.eid}">
                <input type="button" value="开除员工" id ="btn" onclick="gg()"></a></td>
            </tr>
        </c:forEach>
    </c:if>
    <tr align="center" >
        <td colspan="8" ><a href="admin.jsp"><input type="button" value="返回"></a></td>
    </tr>
    <tr>
        <td colspan="8">${updatS}</td>
    </tr>
</table>
</body>
</html>
