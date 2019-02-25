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
<table align="center" border="1">
    <tr>
        <td>姓名</td>
        <td>基本工资</td>
        <td>绩效</td>
        <td>奖惩总计</td>
        <td>社保</td>
        <td>总工资</td>
        <td>发放时间</td>
    </tr>
    <c:if test="${not empty sessionScope.salary2}">
        <tr>
            <td>${sessionScope.salary2.employee.ename}</td>
            <td>${sessionScope.salary2.basic}</td>
            <td>${sessionScope.salary2.bonus}</td>
            <td>${sessionScope.salary2.punish}</td>
            <td>${sessionScope.salary2.social}</td>
            <td>${sessionScope.salary2.totalSal}</td>
            <td>${sessionScope.salary2.accountTime}</td>
        </tr>
    </c:if>
</table>
<table align="center">
    <tr align="center">
        <td><a href="addSalary.jsp">返回</a></td>
    </tr>
</table>
<table align="center">
    <tr align="center">
        <td>${account}</td>
        <td>${resal}</td>
        <td>${sal}</td>
    </tr>
</table>
</body>
</html>
