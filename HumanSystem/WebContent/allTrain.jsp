<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
        <th>培训名称</th>
        <th>开始时间</th>
        <th>结束时间</th>
        <th>参与人员</th>
        <th colspan="3">内容</th>
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
                <td><a href="admin.jsp"><input type="button" value="返回"></a></td>
                <td><a href="deltrain.action?tid=${trainList.tid }"><input type="button" value="删除"></a></td>
            </tr>
        </c:forEach>
    </c:if>
</table>
</body>
</html>
