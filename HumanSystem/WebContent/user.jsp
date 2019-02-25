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
}
h {
	font-family: cursive;
	font-size: x-large;
}
 </style>
<body>
<iframe width="420" scrolling="no" height="60" frameborder="0"
		allowtransparency="true"
		src="//i.tianqi.com/index.php?c=code&id=12&icon=1&py=shanghai&num=5&site=12"></iframe>
    <table border="1" align="center">
        <tr>
            <td colspan="2" align="center">
            <a href="login.jsp"><input type="button" value="退出"></a>
            <a href="updatepassword.jsp"><input type="button" value="修改密码"></a>
            </td>
        </tr>
        <tr>
            <td valign="bottom"><a href="showRecruit.action"><input type="button" value="浏览企业招聘"> </a></td>
            <td valign="bottom" ><a href="lookInterview.action"><input type="button" value=" 查看面试通知"></a></td>
        </tr>
    </table>
<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
    <TABLE height="0%">
        <tr>
            <c:if test="${empty sessionScope.resume}">
            <td nowrap align="right" width="9%">您还没有创建简历...</td>
            <td  width="9%"><a href="addResume.jsp">创建简历</a></td>
            </c:if>
        </tr>
    </TABLE>
    <table align="center">
        <tr>
            <c:if test="${not empty sessionScope.resume}">
             <td width="100%">
                 <fieldset style="height:100%;">
                     <legend>简历信息</legend>
                     <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
                         <tr>
                             <td nowrap align="right" width="9%">姓名：</td>
                            <td width="36%">${sessionScope.resume.name}</td>
                            <td width="12%"><div align="right">性别：</div></td>
                            <td width="43%">
                                ${sessionScope.resume.sex}
                         </tr>
                         <tr>
                             <td nowrap align="right" width="9%">年龄：</td>
                             <td>${sessionScope.resume.age}</td>
                             <td><div align="right">职位：</div></td>
                             <td>${sessionScope.resume.job}</td>
                         </tr>
                         <tr>
                             <td nowrap align="right">所学专业：</td>
                             <td>${sessionScope.resume.specialty}</td>
                             <td><div align="right">工作经验：</div></td>
                             <td>${sessionScope.resume.experience}</td>
                            </tr>
                    <tr>
                        <td nowrap align="right">学历：</td>
                        <td>${sessionScope.resume.studyeffort}</td>
                        <td><div align="right">毕业学校：</div></td>
                        <td>${sessionScope.resume.school}</td>
                    </tr>
                    <tr>
                        <td nowrap align="right">电话：</td>
                        <td>${sessionScope.resume.tel}</td>
                        <td><div align="right">Email：</div></td>
                        <td>${sessionScope.resume.email}</td>
                    </tr>
                    <tr>
                        <td width="9%" nowrap align="right">详细经历：</td>
                        <td colspan="3">
                       
					 <textarea name="content" cols="100" readonly="readonly" rows="6">${sessionScope.resume.content}</textarea> 
                        </td>
                    </tr>

                         <table align="center">
                             <TR>
                                 <TD colspan="1" align="center" height="50px">
                                     <a href="updateResume.jsp">修改简历</a>
                                 </TD>
                             </TR>
                         </table>
                </table>
            </fieldset>
        </td>
        </c:if>
    </tr>
</table>
    <table align="center">
        <TR>
            <td align="center">
                <p >${success}</p>
                <p >${fail}</p>
                <p >${s_confirm}</p>
                <p >${f_confirm}</p>
                 <p >${b_confirm}</p>
                <p >${jj}</p>
                <p >${kk}</p>
            </td>
        </TR>
    </table>
</table>
</body>
</html>
