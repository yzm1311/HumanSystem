<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
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
<body>
<table align="center" border="1">
    <tr>
        <td>上班时间</td>
        <td>下班时间</td>
        <td>是否迟到</td>
        <td>是否早退</td>
    </tr>
    <c:if test="${not empty sessionScope.checkonList}">
        <c:forEach items="${sessionScope.checkonList}" var="checkon">
            <tr>
                <td>${checkon.starttime}</td>
                <td>${checkon.endtime}</td>
                <td>${checkon.gowork_state}</td>
                <td>${checkon.upwork_state}</td>
            </tr>
        </c:forEach>
    </c:if>
 
    
        <tr>
            <td colspan="4" align="center"><a href="employee.jsp"><input type="button" value="返回"/></a></td>
        </tr>
    <
</table>
</body>
</html>
