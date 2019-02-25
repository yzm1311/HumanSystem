<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有的招聘信息</title>
</head>
<head>
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
<table align="center" border="1">
   <tr>
   <td colspan="8"><h>所有的招聘信息</h></td>
   </tr>
    <tr>
        <th>公司名称</th>
        <th>申请岗位</th>
        <th>工作地点</th>
        <th>描述</th>
        <th>发布时间</th>
        <th colspan="3">状态</th>
    </tr>
    <c:if test="${not empty sessionScope.recruitList}">
    <c:forEach items="${sessionScope.recruitList}" var="recruit">
    <tr>
        <td>${recruit.rname}</td>
        <td>${recruit.post.pname}</td>
        <td>${recruit.address}</td>
        <td>${recruit.description}</td>
        <td><fmt:formatDate value='${recruit.grantTime}' pattern='yyyy-MM-dd'/></td>
        <td>
            <c:if test="${recruit.state==1}">
                已失效
            </c:if>
            <c:if test="${recruit.state==0}">
                正常
            </c:if>
        </td>
        <td><a href="updateInRec.action?reid=${recruit.reid}">更新</a></td>
        <td><a href="updateRecruit.action?reid=${recruit.reid}">删除</a></td>
    </tr>
    </c:forEach>
    </c:if>
    <tr>    
        <td colspan="8" align="center">
            <a href="admin.jsp"><input type="button" value="返回"/></a>
        </td>
    </tr>
</body>
</html>
