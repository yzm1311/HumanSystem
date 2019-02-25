<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    
    <script src="js/jquery-1.8.3.js"></script>
    <script src="js/jquery.ui.core.js"></script>
    <script src="js/jquery.ui.widget.js"></script>
    <script src="js/jquery.ui.datepicker.js"></script>
    <script src="js/jquery.ui.datepicker-zh-CN.js"></script>
    <script>
        $(function() {
            $("#datepicker").datepicker();
        });
        $(function() {
            $("#datepicker1").datepicker();
        });
    </script>
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
</head>
<body>
<form action="addTrain.action" method="post">
    <table align="center" border="1">
     <tr>
     <td colspan="2"><h>增加培训</h></td>
     </tr>
        <tr>
            <td>培训名称</td>
            <td><input type="text" name="tname"></td>
        </tr>
        <tr>
            <td>培训起始时间</td>
            <td><input type="text" name="begintime" id="datepicker"></td>
        </tr>
        <tr>
            <td>培训结束时间</td>
            <td><input type="text" name="endtime" id="datepicker1"></td>
        </tr>
        <tr>
            <td>参加员工</td>
            <td>
                <c:forEach items="${sessionScope.employeeList}" var="employee">
                    <input type="checkbox" name="eid" value="${employee.eid}"/>${employee.ename}
                </c:forEach>
            </td>
        </tr>
        <tr>
            <td>培训内容</td>
            <td><input type="text" name="content"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="添加"/>
                <a href="admin.jsp"><input type="button" value="返回"></a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
