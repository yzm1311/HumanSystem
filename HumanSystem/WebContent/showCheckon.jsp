<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
<table align="center" border="1">
    <tr>
        <td>上班时间</td>
        <td>下班时间</td>
        <td>是否迟到</td>
        <td>是否早退</td>
    </tr>
    <c:if test="${not empty checkon2}">
        <tr>
            <td>${checkon2.starttime}</td>
            <td>${checkon2.endtime}</td>
            <td>${checkon2.gowork_state}</td>
            <td>${checkon2.upwork_state}</td>
           
        </tr>
    </c:if>
    <tr>
        <td colspan="2">
        ${success}
        ${defeated}
        </td>
        <td colspan="2" align="center" >
        <a href="employee.jsp"><input type="button" value="返回"></a>  
      
        </td>
    </tr>
    
</table>

</body>
</html>
