<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

 <style type="text/css">
     body {
     margin-top:120px;
	 font-family: cursive;
	 background-image: url("image/7.jpg");
}
h {
	font-family: cursive;
	font-size: x-large;
}
</style>
<body>
   <table align="center" border="1">
        <tr>
        <td>员工id</td>
        <td>奖惩金额</td>
        <td>奖惩缘由</td>
        <td>奖惩时间</td>
    </tr>
    <c:if test="${not empty sessionScope.rwandphList}">
        <c:forEach items="${sessionScope.rwandphList}" var="rwandphList">
            <tr>
                <td>${rwandphList.employee.eid}</td>
                <td>${rwandphList.money}</td>
                <td>${rwandphList.cause}</td>
                <td><fmt:formatDate value='${rwandphList.rptime}' pattern='yyyy-MM-dd'/></td>              
            </tr>
        </c:forEach>
    </c:if>
    <tr> <td align="center" colspan="4"><a href="employee.jsp"><input type="button" value="返回"></a></td></tr>
   </table>
</body>
</html>