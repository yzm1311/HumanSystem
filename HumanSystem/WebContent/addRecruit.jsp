<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>增加招聘</title>
    
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
 
    <script src="js/jquery-1.8.3.js"></script>
    <script src="js/jquery.ui.core.js"></script>
    <script src="js/jquery.ui.widget.js"></script>
    <script src="js/jquery.ui.datepicker.js"></script>
    <script src="js/jquery.ui.datepicker-zh-CN.js"></script>
    <script>
        $(function() {
            $( "#datepicker" ).datepicker(new Date());
        });
    </script>

   
</head>
<body>

<form action="addRecruit.action" method="post">
    <table border="1" align="center" valign="bottom">
    <tr>
        <td colspan="2">
               <h>增加招聘</h>
        </td>
    </tr>
        <tr>
            <td align="right">
                公司名称：
            </td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td width="50%" align="right">
                公司地址：
            </td>
            <td>
                <input type="text" name="address">
            </td>
        </tr>
        <tr>
            <td width="50%" align="right">职位：</td>
            <td width="70%" align="left">
                <select name="pid" id="pname">
                    <c:if test="${not empty sessionScope.postList}">
                        <c:forEach items="${sessionScope.postList}" var="list2">
                            <option value="${list2.pid}">${list2.pname}</option>
                        </c:forEach>
                    </c:if>
                </select>
            </td>
        </tr>
        <tr>
            <td width="50%" align="right">发布时间</td>
            <td><input name="grantTime" id="datepicker" required/></td>
        </tr>
        <tr>
            <td width="50%" align="right">需求</td>
            <td><input type="text" name="description"></td>
        </tr>
        </tr>
        <tr align="center" >
            <td colspan="2" align="center" >
                <input type="submit" name="Submit" value="添加">
                <a href="admin.jsp"><input type="button" value="返回"></a>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
