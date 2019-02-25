<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
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
	margin-top: 120px;
	font-family: cursive;
}

h {
	font-family: cursive;
	font-size: x-large;
}
</style>
</head>
<body>

	<table align="center" border="2">
		<tr>
			<td>员工编号</td>
			<td>姓名</td>
			<td>部门</td>
			<td>职位</td>
			<td>员工基本工资</td>
			<td>员工绩效工资</td>
			<td>员工结算工资月份</td>
			<td>操作</td>
		</tr>
		<c:if test="${not empty sessionScope.employeeList}">
			<c:forEach items="${sessionScope.employeeList}" var="employeeList">
				<form action="addSalary.action" method="post"  autocomplete="off">
					<tr>

						<td><input type="text" value="${employeeList.eid}" name="eid"
							readonly></td>
						<td>${employeeList.ename}</td>
						<td>${employeeList.dept.dname}</td>
						<td>${employeeList.post.pname}</td>
				 	    <td><input type="text" name="basic"></td>
						<td><input type="text" name="bonus"></td> 
						<td><input type="text" name="month" id="datepicker">
						</td>
						<td><input type="submit" name="submit" value="发放工资">
						</td>
					</tr>
				</form>
			</c:forEach>
		</c:if>
		<tr align="center">
			<td colspan="8"><a href="admin.jsp"><input type="button"
					value="返回"></a></td>
		</tr>
	</table>

</body>
</html>
