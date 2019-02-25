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
<form action="updateDept.action">
    <table align="center" border="2">
        <tr>
            <td>部门编号</td>
            <td><input type="text" value="${sessionScope.dept.did}"name="did" READONLY> </td>
        </tr>
        <tr>
            <td>部门名称</td>
            <td><input type="text" value="${sessionScope.dept.dname}" name="dname"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="修改"/></td>
        </tr>
        <tr>
       <td colspan="2"> ${thesame }</td>
        </tr>
    </table>
</form>
</body>
</html>
