<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
 <script type="text/javascript">
   function deal(){
	   var index = window.prompt("输入index", "0");
	   alert(index);
	   var eid = window.prompt("输入eid", "14");
	   alert(eid);
	   var str = window.prompt("输入反还金额", "123");
	   alert(str);
	   window.location.href=("deal.action?index="+index+"&eid="+eid+"&str="+str);
	   //window.location.href("alterInfo.jsp?code="+string1+"&name="+string2+"&detail="+string3+"&count="+number);
	  //增加奖惩
	   
   } 
   function bo(){
	    alert("驳回 ")
	   
   }
 </script>
<body>
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
<table align="center" border="2">
    <tr>
        <td>异议员工编号</td>
        <td>异议缘由</td>
        <td>异议月份</td>
        <td colspan="2">处理</td>
    </tr>
    <c:if test="${not empty sessionScope.dissentList}">
        <c:forEach items="${sessionScope.dissentList}" var="dissent">
            <tr>
                <td>${dissent.employee.eid}</td>
                <td>${dissent.excuse}</td>
                <td>${dissent.month}</td>
                <td><input type="button" onclick="deal()" name="btn" id="btn" value="处理">
                <input type="button" onclick="bo()" value="驳回">
                </td>
            </tr>
        </c:forEach>
    </c:if>
    <tr>
        <td colspan="4" align="center"><a href="admin.jsp"><input type="button" value="返回"></a></td>
    </tr>
</table>
</body>
</html>
