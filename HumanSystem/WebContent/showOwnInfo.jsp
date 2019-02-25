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
<form action="updateOwnIfo.action" method="post">
    <table class="list" align="center" border="1">
        <tr>
            <td>员工编号</td>
            <td><input type="text" value="${sessionScope.employee.eid}" name="eid" readonly></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" value="${sessionScope.employee.ename}" name="ename" > </td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="text" value="${sessionScope.employee.sex}" name="sex" ></td>
        </tr>
        <tr>
            <td>年龄</td>
            <td><input type="text" value="${sessionScope.employee.age}" name="age" ></td>
        </tr>
        <tr>
        <tr>
            <td>手机号码</td>
            <td><input type="text" value="${sessionScope.employee.tel}" name="tel"></td>
        </tr>

        <tr>
            <td>邮箱</td>
            <td><input type="text" value="${sessionScope.employee.email}" name="email"></td>
        </tr>    
         <tr>
            <td>部门</td>
            <td><input type="text" value="${sessionScope.employee.dept.dname}" readonly="readonly" "dname"></td>
        </tr> 
         <tr>
            <td>职位</td>
            <td><input type="text" value="${sessionScope.employee.post.pname}"  readonly="readonly" name="pname"></td>
        </tr>   
        <tr>
            <td colspan="2" align="center"><input type="submit" value="修改">
                <a href="employee.jsp"><input type="button" value="返回"></a>
            </td>
        </tr>
    </table>
</body>
</html>
