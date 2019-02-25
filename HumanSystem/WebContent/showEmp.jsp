<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table align="center" border="2">
    <tr>
        <td>员工编号</td>
        <td>员工姓名</td>
    </tr>
    <c:if test="${not empty sessionScope.empList}">
        <c:forEach items="${sessionScope.empList}" var="employee">
            <tr>
                <td>${employee.eid}</td>
                <td>${employee.ename}</td>
            </tr>
        </c:forEach>
    </c:if>

    <tr>
        <td colspan="2" align="center"><a href="showDeptPost.jsp">返回</a></td>
    </tr>
</table>
</body>
</html>
