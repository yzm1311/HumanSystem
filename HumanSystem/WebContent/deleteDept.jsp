<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Mbenben
  Date: 2017/4/14
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="deleteDept.action" method="post">
<table class=list id=tblStudent width="40%"  border="0" align="center"
       cellpadding="0" cellspacing="0">
    <tr>
        <td height="30" align="center"  width="300">
            部门名称:
        </td>
    </tr>
    <c:forEach items="${sessionScope.list}" var="dept">
        <tr>
            <td>${dept.dname}</td>
        </tr>
    </c:forEach>
</table>
</form>
</body>
</html>
