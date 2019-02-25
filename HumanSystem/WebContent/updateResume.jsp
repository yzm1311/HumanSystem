<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>人力资源管理系统</title>
    <link rel="stylesheet" rev="stylesheet" href="css/style.css " type="text/css" media="all" />
    <script type="text/javascript" src="Js/typem.js"></script>
    <script type="text/javascript" src="Js/js.js"></script>
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
    </style>
    <script type="text/javascript">
	//判断是否为空
	function kong() {
		//alert("a");
		var name = document.getElementsByName("name")[0];
		//alert("b");
		if (name.value.length == 0) {
			alert(name.value.length == 0);
			return false;
		}
	}
</script>
</head>
<body class="ContentBody">
<form action="updateResume.action" method="post"  onsubmit=" return kong()">
    <div class="MainDiv">
        <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
            <tr>
                <th class="tablestyle_title" >简历录入</th>
            </tr>
            <tr>
                <td class="CPanel">
                    <table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
                        <TR>
                            <TD width="100%">
                                <fieldset style="height:100%;">
                                    <legend>简历信息</legend>
                                    <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
                                        <tr>
                                            <td nowrap align="right" width="9%">姓名：</td>
                                            <td width="36%">
                                                <input name="name" value="${sessionScope.resume.name}" id="name" >
                                                <span class="red">*</span></td>
                                            <td width="12%"><div align="right">性别：</div></td>
                                            <td width="43%">
                                                <input name="sex" value="${sessionScope.resume.sex}" id="sex">

                                        </tr>
                                        <tr>
                                            <td nowrap align="right" width="9%">年龄：</td>
                                            <td>
                                                <input name="age" value="${sessionScope.resume.age}" id="" >
                                            </td>
                                            <td><div align="right">职位：</div>
                                            </td>
                                            <td>
                                                <input name="job" value="${sessionScope.resume.job}" id="job" >
                                                <span class="red">*</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td nowrap align="right">所学专业：</td>
                                            <td><input name="specialty" value="${sessionScope.resume.specialty}" class="input">
                                                <span class="red">*</span>
                                            </td>
                                            <td><div align="right">工作经验：</div></td>
                                            <td><input name="experience" value="${sessionScope.resume.experience}" class="input">
                                                <span class="red">*</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td nowrap align="right">学历：</td>
                                            <td><select name="studyeffort">
                                                <option>高中</option>
                                                <option>大专</option>
                                                <option>本科</option>
                                                <option>本科以上</option>
                                            </select>
                                                <span class="red">*</span></td>
                                            <td><div align="right">毕业学校：</div></td>
                                            <td><input name="school" value="${sessionScope.resume.school}" class="input">
                                                <span class="red">*</span></td>
                                        </tr>
                                        <tr>
                                            <td nowrap align="right">电话：</td>
                                            <td><input name="tel" value="${sessionScope.resume.tel}" class="input">
                                                <span class="red">*</span></td>
                                            <td><div align="right">Email：</div></td>
                                            <td><input name="email" value="${sessionScope.resume.email}" class="input">
                                                <span class="red">*</span></td>
                                        </tr>
                                        <tr>
                                            <td width="9%" nowrap align="right">详细经历：</td>
                                            <td colspan="3">
					                            <textarea name="content" cols="100" rows="6" class="input" id="content">${sessionScope.resume.content}</textarea>
                                            </td>
                                        </tr>
                                    </table>
                                </fieldset>
                            </TD>

                        </TR>
                    </TABLE>
                </td>
            </tr>
            <TR>
                <TD colspan="2" align="center" height="50px">
                    <input name="修改" type="submit" class="button" value="修改"/>　
         <!--            <input name="重置" type="reset" class="button" value="重置"/> -->
                </TD>
            </TR>
        </TABLE>
    </div>
</form>
</body>
</html>

