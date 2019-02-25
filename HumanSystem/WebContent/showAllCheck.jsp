<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<table  align="center" border="2">
    <tr>
        <td>员工姓名</td>
        <td>上班时间</td>
        <td>下班时间</td>
        <td>是否迟到</td>
        <td>是否早退</td>
    </tr>
    <c:if test="${not empty sessionScope.list}">
        <c:forEach items="${sessionScope.list}" var="checkon">
            <tr>
                <td>${checkon.employee.ename}</td>
                <td><fmt:formatDate value='${checkon.starttime}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
                <td><fmt:formatDate value='${checkon.endtime}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
                <td>${checkon.gowork_state}</td>
                <td>${checkon.upwork_state}</td>
            </tr>
        </c:forEach>
    </c:if>
    <tr>
    <td colspan="5" align="center">
    <a href="admin.jsp"><input type="button" value="返回"/></a>
    </td>
    </tr>
</table>
</body>
</html>
