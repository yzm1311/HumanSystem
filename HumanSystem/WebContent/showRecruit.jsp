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
            <td>申请岗位</td>
            <td>工作地点</td>
            <td>描述</td>
            <td>发布时间</td>
        </tr>
        <c:if test="${not empty sessionScope.recruitList}">
            <c:forEach items="${sessionScope.recruitList}" var="recruit">
                <tr>
                    <td>${recruit.rname}</td>
                    <td>${recruit.post.pname}</td>
                    <td>${recruit.address}</td>
                    <td>${recruit.description}</td>
                    <td><fmt:formatDate value='${recruit.grantTime}' pattern='yyyy-MM-dd'/></td>
                    <td><a href="seedResume.action?reid=${recruit.reid}">投递简历</a></td>
                </tr>
            </c:forEach>
        </c:if>
        <tr><td colspan="6" align="center"><a href="user.jsp"><input type="button" value="返回"/></a></td></tr>
    </table>

</body>
</html>
