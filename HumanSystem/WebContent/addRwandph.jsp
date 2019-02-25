<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/jquery.ui.all.css">
    <link rel="stylesheet" href="css/demos.css">
    <script src="js/jquery-1.8.3.js"></script>
    <script src="js/jquery.ui.core.js"></script>

    <script src="js/jquery.ui.widget.js"></script>

    <script src="js/jquery.ui.datepicker.js"></script>
    <script src="js/jquery.ui.datepicker-zh-CN.js"></script>
    <script>
        $(function() {
            $("#datepicker").datepicker();
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
<form action="addRwandph.action" method="post">
    <table align="center" border="1">
     <tr>
      <td colspan="2"><h>增加奖惩</h></td>
     </tr>
        <tr>
            <td>奖惩员工</td>
            <td>
                <select name="eid" id="ename">
                    <c:if test="${not empty sessionScope.employeeList}">
                        <c:forEach items="${sessionScope.employeeList}" var="employee">
                            <option value="${employee.eid}">${employee.ename}</option>
                        </c:forEach>
                    </c:if>
                </select>
            </td>
        </tr>
        <tr>
            <td>奖金金额</td>
            <td><input type="text" name="money"></td>
        </tr>
        <tr>
            <td>奖惩时间</td>
            <td><input name="rptime" id="datepicker" required/></td>
        </tr>
        <tr>
            <td>奖惩缘由</td>
            <td><input type="text" name="cause"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
            <input type="submit" value="添加">
            <a href="admin.jsp" ><input type="button" value="返回"></a>
            </td>
            
        </tr>
    </table>
</form>
</body>
</html>
