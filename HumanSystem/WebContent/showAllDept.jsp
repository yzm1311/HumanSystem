<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有的部门</title>
</head>
<style type="text/css">
   body {
     margin-top:120px;
	 font-family: cursive;
}
span {
	font-family: cursive;
	font-size: x-large;
}
</style>
<body>

<table>
	
	</table>
<table align="center" border="2" width="30%">
	   <tr>
			<td colspan="4"><span><h>所有的部门</h></span></td>
		</tr>		
    <tr>
        <td>部门编号</td>
        <td>部门名称</td>
        <td colspan="3" align="center">操作</td>
    </tr>
    <c:if test="${not empty sessionScope.deptList}">
        <c:forEach items="${sessionScope.deptList}" var="dept">
            <tr>
                <td>${dept.did}</td>
                <td>${dept.dname}</td>
                <td><a href="getDept.action?did=${dept.did}">修改</a></td>
                <td><a href="deleteDept.action?did=${dept.did}">删除</a></td>
            </tr>
        </c:forEach>
    </c:if>
    <tr>
        <td colspan="4" align="center">
            <a href="addDept.jsp"><input type="button" value="添加"/></a>
       
            <a href="admin.jsp"><input type="button" value="返回"/></a>
        </td>

    </tr>
<tr>
            <td  align="center" colspan="4">
                ${dS}        
            </td>
        </tr>
   

</table>
</body>
</html>
