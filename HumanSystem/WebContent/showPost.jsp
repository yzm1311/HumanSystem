<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看职位</title>
</head>
 <style type="text/css">
     body {
     margin-top:120px;
	 font-family: cursive;
}
span {
	font-family: cursive;
	font-size: x-large;
}
</style>
<body>
<table align="center" border="2">
      <tr>
        <td colspan="5">
            <span><h>查看职位</h></span>
        </td>
    </tr>
    <tr>
        <td>职位编号</td>
        <td>职位名称</td>
        <td>部门名称</td>
        <td colspan="2" align="center">操作</td>
    </tr>
    <c:if test="${not empty sessionScope.postList}">
        <c:forEach items="${sessionScope.postList}" var="post">
            <tr>
                <td>${post.pid}</td>
                <td>${post.pname}</td>
                <td>${post.dept.dname}</td>
                <td><a href="getPost.action?pid=${post.pid}">修改</a></td>
                <td><a href="deletePost.action?pid=${post.pid}">删除</a></td>
            </tr>
        </c:forEach>
    </c:if>
    <tr>
        <td  align="center" colspan="5" width="80%">
            <a href="addPost.jsp"><input type="button" value="添加"/></a>
        
            <a href="admin.jsp"><input type="button" value="返回"/></a>
        </td>
    </tr>
    <tr>
         <td  align="center" colspan="5" >
                ${DPF}
            </td>
        </tr>
    
</table>
</body>
</html>
