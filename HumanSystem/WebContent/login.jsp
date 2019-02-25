<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>登录界面</title>
<style type="text/css">
body {
	font-family: cursive;
	background-image: url(images/2.jpg);
	font-size: x-large;
}

span {
	font-weight: bold;
}
iframe {
	text-align: center;
}
</style>
</head>
<body>
	<iframe width="420" scrolling="no" height="60" frameborder="0"
		allowtransparency="true"
		src="//i.tianqi.com/index.php?c=code&id=12&icon=1&py=shanghai&num=5&site=12"></iframe>
	<table class="test" width="100%" height="30%" border="0">

		<tr>
			<td width="700" height="55" align="center" valign="bottom"><span>登录界面</span>
			</td>
		</tr>
		<tr>
			<td height="20">&nbsp;</td>
		</tr>
	</table>
	<form action="login.action" method="post">
		<table width="38%" border="0" align="center" valign="bottom">
			<tr>
				<td width="30%" align="right">用户名：</td>
				<td width="70%" align="left"><input type="text" name="uname" />
				</td>
			</tr>
			<tr>
				<td align="right">密 码：</td>
				<td><input type="password" name="upasswd" /></td>
			</tr>
			<tr align="center">
				<td colspan="2" style="padding-right: 80px"><input
					type="submit" name="Submit" value="登录"> <a
					href="register.jsp"><input type="button" value="注册" /></a></td>
			</tr>
			<tr align="center">
				<td colspan="2" style="padding-right: 80px">${error}${msg}
					${sd}</td>
			</tr>
		</table>

	</form>

</body>
</html>
