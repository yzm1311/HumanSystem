<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript">
	//判断是否为空
	function kong() {
		//alert("a");
		var name = document.getElementsByName("excuse")[0];
	//	alert("b");
		if (name.value.length == 0) {
			alert(name.value.length == 0);
			return false;
		}
	}
</script>
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
  margin-top:120px;
 font-family: cursive;
}
h {
	font-family: cursive;
	font-size: x-large;
}
 </style>
   <script>
    $(document).ready(function() { 
    	$("#datepicker").datepicker(); 
    	}); 
    </script>
<body>
<form action="addDissent.action" method="post"  onsubmit=" return kong()">
    <table align="center" border="1">
        <tr>
            <td>异议缘由</td>
            <td><input type="text" name="excuse"></td>
        </tr>
        <tr>
            <td>异议时间</td>
             <td><input type="text"  name="month" id="datepicker"></td> 
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="异议">&nbsp;
                <a href="employee.jsp"><input type="button" value="返回"></a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
