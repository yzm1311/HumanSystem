<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<head>
    <title>Title</title>
</head>
<body>
<form action="deleteRecruit.action">
    <table class=list id=tblStudent width="40%"  border="0" align="center"
           cellpadding="0" cellspacing="0">
        <tr>
            <td height="30" align="center"  width="300">
                招聘信息:
            </td>
        </tr>
        <c:forEach items="${sessionScope.list3}" var="list3">
            <tr>
                <td> <input type="checkbox" value="${list3.name}"></td>
            </tr>
        </c:forEach>>
    </table>
</form>
</body>
</html>
