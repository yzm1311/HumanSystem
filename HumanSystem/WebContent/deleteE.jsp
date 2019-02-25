<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
	//判断是否为空
	function kong() {
	
		var name = document.getElementsByName("dname")[0];
	
		if (name.value.length == 0) {
			alert(name.value.length == 0);
			return false;
		}
	}
</script>
<body>
	<form action=""deleteEmployee.action?eid=${employee.eid} method="post" onsubmit=" return kong()">
		<table>
			<tr>
				<td>开除原因</td>
				<td><input type="text" name="dname"></td>
			</tr>
			<tr>
				<td><a href="allemployee.jsp"><input type="submit" value="开除"></a></td>		
			</tr>
		</table>
	</form>
</body>
</html>