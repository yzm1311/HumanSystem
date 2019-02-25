<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新员工信息</title>
   <style type="text/css">
     body {
     margin-top:120px;
	 font-family: cursive;
}
h {
	font-family: cursive;
	font-size: x-large;
}
 </style>
</head>
<body>
<table align="center" border="2">

   <tr>
        <td colspan="9">
            <h>更新员工信息</h>
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
                <td><a href="updateEmployee.action?eid=${employee.eid}">人事调动</a></td>
                <td><a href="updateInfor.action?eid=${employee.eid}">修改人员基本信息</a></td>
            </tr>
        </c:forEach>
    </c:if>
    <tr align="center" >
        <td colspan="9"><a href="admin.jsp"><input type="button" value="返回"></a></td>
    </tr>
    <tr>
        <td colspan="9">${updatS}</td>
    </tr>
</table>
</body>
</html>
