<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    $(document).ready(function() { 
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
 <script type="text/javascript">
	//判断是否为空
	function kong() {
		var name = document.getElementsByName("rptime")[0];
		if (name.value.length == 0) {
			alert(name.value.length == 0);s
			return false;
		}
	}
</script>
</head>
<body>

<form action="updateRwandph.action?eid=${sessionScope.rwandph.employee.eid}" method="post" onsubmit=" return kong()">
    <table align="center" border="1">
      <tr>
      <td colspan="2"><h>修改奖惩</h></td>
      </tr>
        <tr>
            <td>奖惩编号</td>
            <td><input type="text" value="${sessionScope.rwandph.rpid}" name="rpid" READONLY> </td>
        </tr>
        <tr>
            <td>奖惩人员</td>
            <td><input type="text" value="${sessionScope.rwandph.employee.ename}" name="ename" readonly></td>
        </tr>
        <tr>
            <td>奖惩金额</td>
            <td><input type="text" value="${sessionScope.rwandph.money}" name="money"></td>
        </tr>
        <tr>
            <td>奖惩缘由</td>
            <td><input type="text" value="${sessionScope.rwandph.cause}" name="cause"></td>
        </tr>
        <tr>
            <td>奖惩时间</td>
            <td><input type="text" value="<fmt:formatDate value='${sessionScope.cause.rptime}'
            pattern='yyyy-MM-dd'/>" name="rptime" id="datepicker"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="修改"/></td>
        </tr>
    </table>
</form>
</body>
</html>
