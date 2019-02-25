<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
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
<body>
<table align="center" border="2">
   <tr>
   <td colspan="7"><h>得到所有奖惩</h></td>
   </tr>
    <tr>
        <td>奖惩人员</td>
        <td>奖惩金额</td>
        <td>奖惩缘由</td>
        <td>奖惩时间</td>
        <td colspan="2" align="center">操作</td>
    </tr>
    <c:if test="${not empty sessionScope.rwandphList}">
        <c:forEach items="${sessionScope.rwandphList}" var="rwandphList">
            <tr>
                <td>${rwandphList.employee.ename}</td>
                <td>${rwandphList.money}</td>
                <td>${rwandphList.cause}</td>
                <td><fmt:formatDate value='${rwandphList.rptime}' pattern='yyyy-MM-dd'/></td>
                <td><a href="getRwandph.action?rpid=${rwandphList.rpid}">修改</a></td>
                <td><a href="deleteRwandph.action?rpid=${rwandphList.rpid}">删除</a></td>
            </tr>
        </c:forEach>
    </c:if>
    <tr>
        <td colspan="7" align="center">
            <a href="admin.jsp"><input type="button" value="返回"/></a>
        </td>
    </tr>
</table>
</body>
</html>
