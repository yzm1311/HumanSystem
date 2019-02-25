<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>员工界面</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/2.css" />
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/1.js"></script>

 <style type="text/css">
body {
	margin-top: 40px;
	font-family: cursive;
	 background-image: url("images/9.jpg");
}

span {
	font-family: cursive;
	font-size: x-large;
}
</style>
</head>
<body>
<iframe width="420" scrolling="no" height="60" frameborder="0"
		allowtransparency="true"
		src="//i.tianqi.com/index.php?c=code&id=12&icon=1&py=shanghai&num=5&site=12"></iframe>
<%-- ${user.getUname()} --%>
		<h5><a href="login.jsp">退出当前用户</a></h5>
	
		<ul>
		<li class="hmain"><a href="#">个人信息</a>
			<ul>
				<li><a href="Own.action?eid=${employee.eid }">查看自己</a></li>
				
			</ul>
			</li>
		<li class="hmain"><a href="#">培训管理</a>
			<ul>
				<li><a href="getTrainFromEmp.action">查看培训</a></li>
			
			</ul></li>
		<li class="hmain"><a href="#">薪资管理</a>
			<ul>
				<li><a href="getEmployeeSalary.action">查看我的薪资</a></li>			
			</ul></li>
			<li class="hmain"><a href="#">查看奖惩</a>
			<ul>
				<li><a href="getown.action?eid=${sessionScope.employee.eid}">查看奖惩</a></li>			
			</ul></li>
		 <li class="hmain"><a href="#">考勤管理</a>
			<ul>
				<li><a href="showEmpC.action">查看我的考勤记录</a></li>
				
			</ul></li>
	 <li class="hmain"><a href="#">查看职位</a>
			<ul>
				<li><a href="getAllPost1.action">查看职位</a></li>
				
			</ul></li>
	<li class="hmain"><a href="#">打卡</a>
			<ul>
				<li><a href="addCheckon.action">上班打卡</a></li>
				<li><a href="updateCheckon.action">下班打卡</a></li>
			</ul></li>
	</ul>
	
</body>
</html>
