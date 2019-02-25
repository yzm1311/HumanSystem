<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


    <title>title</title> 
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
    $(document).ready(function() { 
    	$("#datepicker").datepicker(); 
    	}); 
    </script>
</head>
<body>

    <form action="fanhui.action?reid=${sessionScope.recruit.reid}" method="post" onsubmit=" return kong()">
       <table border="1" align="center">
          <tr>
          <td colspan="2"><h>更新招聘信息</h></td>
          </tr>
         <tr>
          <td>公司名称</td><td><input type="text" value="${sessionScope.recruit.rname}" name="name"></input></td>
         </tr>
          <tr>
          <td>申请岗位</td><td><input type="text" value="${sessionScope.recruit.post.pname}" name="pname"></input></td>
         </tr>
          <tr>
          <td>工作地点</td><td><input type="text" value="${sessionScope.recruit.address}" name="address"></input></td>
         </tr>
          <tr>
          <td>描述</td><td><input type="text" value="${sessionScope.recruit.description}" name="description"></input></td>
         </tr>
          <tr>
          <td>发布时间</td>      
          <td><input type="text" value="<fmt:formatDate value='${sessionScope.recruit.grantTime}'
            pattern='yyyy-MM-dd'/>"name="grantTime"id="datepicker"></input></td>   
         </tr>
         <tr>
         <td>状态</td>  
        <td>
            <c:if test="${recruit.state==1}">
                已失效
            </c:if>
            <c:if test="${recruit.state==0}">
                正常
            </c:if>
        </td>
        </tr>
         <tr>
          <td colspan="2" align="center"><input type="submit" value="确认" ></input>
            <a href="showAllRecruit.jsp"><input type="button" value="返回"></input></a>
          </td>         
         </tr>
       </table>
   </form>
</body>
</html>
