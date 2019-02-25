
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
<form action="updatePost.action">
    <table align="center" border="1">
        <tr>
            <td>职位编号</td>
            <td><input type="text" value="${sessionScope.post.pid}"name="pid" READONLY> </td>
        </tr>
        <tr>
            <td>职位名称</td>
            <td><input type="text" value="${sessionScope.post.pname}" name="pname"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="修改"/></td>
        </tr>
        <tr><td>${same }</td></tr>
</table>
</form>
</body>
</html>

