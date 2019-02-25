<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<title>title</title>
</head>
<style type="text/css">
body {
	margin-top: 120px;
	font-family: cursive;
}
</style>
<script type="text/javascript">
	//判断是否为空
	function kong() {
		//alert("a");
		var name = document.getElementsByName("name")[0];
		//	alert("b");
		if (name.value.length == 0) {
			alert(name.value.length == 0);
			return false;
		}
	}
	function password1() {
		
		var password = document.getElementById("pd").value;
		if (password.length == 0) {
			document.getElementById("span1").innerHTML = "密码不能为空";
		}
	}
	function password2() {
		var password2 = document.getElementById("repd").value;
		var password1 = document.getElementById("pd").value;
		
		
		if (passwrod1!=password2) {
			
			document.getElementById("span2").innerHTML = "密码不同";
		}
	}
</script>
<body>
	<form action="updatepassword.action" method="post"
		onsubmit=" return kong()">
		<table align="center" border="1">

			<tr>
				<td>用户名</td>
				<td><input type="text" name="name" ></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" id="pd"  name="pd" onblur="password1()"></td>
				<td><span id="span1">*</span></td>
			</tr>
			<tr>
				<td>确认密码</td>
				<td><input type="text" name="repd" id="repd" onblur="password2()"></td>
				<td><span id=span2>*</span></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="确认">
				<a href="login.action"><input type="button" value="返回"></a>	</td>
			</tr>
		</table>
	</form>
	<table>
		<tr>
			<td>${fail}</td>

		</tr>
	</table>
</body>
</html>