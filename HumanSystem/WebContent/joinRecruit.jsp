<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
</head>
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
<body>
	<table align="center" border="2">
		<tr>
			<th>姓名</th>
			<th>性别</th>
			<th>年龄</th>
			<th>籍贯</th>
			<th>工作经验</th>
			<th>所学专业</th>
			<th>毕业学校</th>
			<th>学历</th>
			<th>电话</th>
			<th>Email</th>
			<th>详细经历</th>
			<th>面试职位</th>
		</tr>
		<c:if test="${not empty sessionScope.resumes}">
			<c:forEach items="${sessionScope.resumes}" var="resume">

				<tr>
					<td>${resume.name}</td>
					<td>${resume.sex}</td>
					<td>${resume.age}</td>
					<td>${resume.job}</td>
					<td>${resume.experience}</td>
					<td>${resume.specialty}</td>
					<td>${resume.school}</td>
					<td>${resume.studyeffort}</td>
					<td>${resume.tel}</td>
					<td>${resume.email}</td>
					<td>${resume.content}</td>
					<td>${resume.post.pname}</td>
					<td></td>
					<td><a href="hire.action?rid=${resume.rid}">录用</a></td>
					<td><a href="giveUp.action?rid=${resume.rid}">放弃</a></td>
				</tr>
			</c:forEach>
		</c:if>
		<tr>
			<td colspan="12" align="center"><a href="admin.jsp"><input
					type="button" value="返回" /></a></td>
		</tr>
	</table>
</body>
</html>
