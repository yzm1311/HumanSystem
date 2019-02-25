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
        <td>公司名称</td>
        <td>面试岗位</td>
        <td>工作地点</td>
        <td>描述</td>
        <td>发布时间</td>
    </tr>
    <c:if test="${not empty sessionScope.recruit}">
            <tr>
                <td>${sessionScope.recruit.rname}</td>
                <td>${sessionScope.recruit.post.pname}</td>
                <td>${sessionScope.recruit.address}</td>
                <td>${sessionScope.recruit.description}</td>
                <td><fmt:formatDate value='${sessionScope.recruit.grantTime}' pattern='yyyy-MM-dd'/></td>
                <td>
                <a href="confirmRecruit.action"><input type="button" id="button1" value="确定面试"></a>
                 <a href="failRecruit.action"><input type="button" id="button1" value="放弃面试"></a>
                </td>               
            </tr>
    </c:if>
    <tr>
    <td colspan="5" align="center"><a href="user.jsp"><input type="button" value="返回"/></a></td>
    </tr>
</table>
</body>
</html>
