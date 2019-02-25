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
        <td>员工</td>
        <td>基本工资</td>
        <td>绩效工资</td>
        <td>奖惩工资</td>
        <td>社保</td>
        <td>总工资</td>
        <td>结算时间</td>
        <td>是否有异议</td>
    </tr>
    <c:if test="${not empty sessionScope.salaryList}">
        <c:forEach items="${sessionScope.salaryList}" var="salary">
            <tr>
                <td>${salary.employee.ename}</td>
                <td>${salary.basic}</td>
                <td>${salary.bonus}</td>
                <td>${salary.punish}</td>
                <td>${salary.social}</td>
                <td>${salary.totalSal}</td>
                <td><fmt:formatDate value='${salary.accountTime}' pattern='yyyy-MM-dd'/></td>
                <td><a href="dissent.jsp">异议</a></td>
            </tr>
        </c:forEach>
    </c:if>
    <tr>
        <td colspan="9" align="center"><a href="employee.jsp"><input type="button" value="返回"></a></td>
      
    </tr>
    <tr>
      <td colspan="9" align="center">${Dss}</td>
    </tr>
</table>
</body>
</html>
