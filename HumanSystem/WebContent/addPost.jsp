<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>增加职位</title>
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

<form action="addPost.action" method="post">
    <table width="38%" border="1" align="center" valign="bottom">
     <tr>
        <td colspan="2">
          <h>增加职位</h>
        </td>
    </tr>
        <tr>
            <td align="right">
                部门名称：
            </td>
            <td width="70%" align="left">
                <select name="dname" id="dname">
                   <c:if test="${not empty sessionScope.deptList}">
                       <c:forEach items="${sessionScope.deptList}" var="dept">
                           <option value="${dept.dname}">${dept.dname}</option>
                       </c:forEach>
                   </c:if>
                </select>
            </td>
        </tr>

        <tr>
           <td width="30%" align="right">
            职位名称：
            </td>
            <td width="70%" align="left">
                <input type="text" name="pname">
            </td >
        </tr>

        <tr align="center" >
            <td colspan="2" style="padding-right:80px" >
                <input type="submit" name="Submit" value="添加">
                <a href="admin.jsp"><input type="button" value="返回"></a>
            </td>
        </tr>
        <tr>
        <td>${tsame}</td>
        </tr>
    </table>
</form>

</body>
</html>
