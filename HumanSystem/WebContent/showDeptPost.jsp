<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table align="center" border="2">
    <tr>
        <td>职位编号</td>
        <td>职位名称</td>
        <td>操作</td>
    </tr>
    <c:if test="${not empty sessionScope.dept.postSet}">
        <c:forEach items="${sessionScope.dept.postSet}" var="postSet">
            <tr>
                <td>${postSet.pid}</td>
                <td>${postSet.pname}</td>
                <td><a href="getEmp.action?pid=${postSet.pid}">查看员工</a></td>
            </tr>
        </c:forEach>
    </c:if>
    <tr>
        <td colspan="2" align="center">
            <a href="showAllDept.jsp"><input type="button" value="返回"/></a>
        </td>
    </tr>
</table>

</body>
</html>
