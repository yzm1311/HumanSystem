<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<style type="text/css">
body {
	margin-top: 120px;
	font-family: cursive;
}

span {
	font-family: cursive;
	font-size: x-large;
}
</style>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
    	
    
     $(function() {
                var dname = $("#dname").val();
                $("#pname").html("");
                $.post("selectDept.action","dname="+dname,function (date){
                    for(var i=0;i<date.length;i++){
                        $("#pname").append("<option value='"+date[i].pid +"'>"+date[i].pname+"</option>");
                    }
                },"json")
        });
    
        $(function() {
            $("#dname").change(function () {
                var dname = $("#dname").val();
                $("#pname").html("");
                $.post("selectDept.action","dname="+dname,function (date){
                    for(var i=0;i<date.length;i++){
                        $("#pname").append("<option value='"+date[i].pid +"'>"+date[i].pname+"</option>");
                    }
                },"json")
            });
        });
    </script>
</head>
<body>
<form action="changeEmp.action" method="post">
    <table align="center" border="1">
        <tr>
            <td>部门</td>
            <td>
                <select name="dname" id="dname">
                    <c:if test="${not empty sessionScope.deptList}">
                        <c:forEach items="${sessionScope.deptList}" var="dept" >
                            <option value="${dept.dname}">${dept.dname}</option>
                        </c:forEach>
                    </c:if>
                </select>
            </td>
        </tr>
        <tr>
            <td>职位</td>
            <td>
                <select id="pname" name="pid">
                </select>
            </td>
        </tr>
        <tr>
            <td>员工编号</td>
            <td><input type="text" value="${sessionScope.employee.eid}" name="eid" readonly> </td>
        </tr>
        <tr>
            <td>员工姓名</td>
            <td><input type="text" value="${sessionScope.employee.ename}" name="ename" readonly> </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="确认调动"></td>
        </tr>
    </table>
</form>
</body>
</html>
