<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>管理员界面</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/1.css" />
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/1.js"></script>
<style type="text/css">
h5{
 padding-left: 5px;
}
</style>
</head>
<body>
<%-- ${user.getUname()} --%>
		<h5><a href="login.jsp">退出当前用户</a></h5>
	
	<ul>
		<li class="hmain"><a href="#">管理部门</a>
			<ul>
				<li><a href="addDept.jsp">增加部门</a></li>
				<li><a href="getAlldept.action">查看部门</a></li>
				<li><a href="getAlldept.action">删除部门</a></li>
				<li><a href="getAlldept.action">更改部门</a></li>
			</ul>
			</li>
		<li class="hmain"><a href="#">管理职位</a>
			<ul>
				<li><a href="lookDept.action">增加职位</a></li>
				<li><a href="getAllPost.action">查看职位</a></li>
				<li><a href="getAllPost.action">删除职位</a></li>
			</ul></li>
		<li class="hmain"><a href="#">管理员工</a>
			<ul>
				<li><a href="getEmployee.action">查看员工</a></li>
				<li><a href="getEmployee.action">开除员工</a></li>
				<li><a href="updateInfoEmp.action">员工信息修改</a></li>
			</ul></li>
		<li class="hmain"><a href="#">管理招聘</a>
			<ul>
				<li><a href="addRecruit.jsp">加招聘信息</a></li>
				<li><a href="showResume.action">看已投简历</a></li>
				<li><a href="joinRecruit.action">已参加面试</a></li>
				<li><a href="getAllRecruit.action">看招聘信息</a></li>
			</ul></li>
		<li class="hmain"><a href="#">管理培训</a>
			<ul>
				<li><a href="getAllEmployeeAndAddTrain.action">增加培训</a></li>
				<li><a href="getAllTrain.action">查看培训</a></li>
				<li><a href="getAllTrain.action">删除培训</a>
			</ul></li>
		<li class="hmain"><a href="#">管理奖惩</a>
			<ul>
				<li><a href="getAllEmployeeAndaddRwandph.action">增加奖惩</a></li>
				<li><a href="getAllRP.action">查看所有奖惩</a></li>
				<li><a href="getAllRP.action">修改奖惩</a></li>
				<li><a href="getAllRP.action">删除奖惩</a></li>
			</ul></li>
		<li class="hmain"><a href="#">管理薪资</a>
			<ul>
				<li><a href="getAllSAndE.action">发放薪资</a></li>
				<li><a href="getDissent.action">查看工资异议</a></li>
			</ul></li>
		<li class="hmain"><a href="#">管理考勤</a>
			<ul>
				<li><a href="getAllCheckon.action">查看考勤</a></li>
			</ul></li>
	</ul>
</body>
</html>
