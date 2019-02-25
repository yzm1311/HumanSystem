<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        a{text-decoration:none;}

    </style>
    <style type="text/css">
body {
	margin-top: 120px;
	font-family: cursive;
}

span {
	font-family: cursive;
	font-size: x-large;
}
</style>
</head>
<body>
<table align="center" border="2">
     <tr>
        <td>培训名称</td>
        <td>开始时间</td>
        <td>结束时间</td>
        <td>参与人员</td>
        <td colspan="2">内容</td>
    </tr>
        <c:if test="${not empty sessionScope.trainList}">
        <c:forEach items="${sessionScope.trainList}" var="trainList">

            <tr>
                <td>${trainList.tname}</td>
                <td>${trainList.begintime}</td>
                <td>${trainList.endtime}</td>
                <td>
                <c:forEach items="${trainList.employeeSet}" var="emp">
                    ${emp.ename}
                </c:forEach>
                </td>
                <td>${trainList.content}</td>
                
                <td><a href="employee.jsp">返回</a></td>
            </tr>
            </c:forEach>
        </c:if>

</table>
</body>
</html>
