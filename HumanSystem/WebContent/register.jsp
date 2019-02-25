<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
        $(function() {
            var count1=0;
            var count2=0;
            var count3=0;
            $("#uname").blur(function () {
                var uname = $("#uname").val();
                if(uname.length==0){
                    $("#span").html("用户名不能为空");
                    count1++;
                }else{
                    $.post("confirm.action","uname="+uname,function (date){
                        if(date=="ok"){
                            count1=0;
                        }else {
                            count1++;
                        }
                        $("#span").html(date);
                    })
                }
            });
            $("#upasswd").blur(function () {
                var upasswd=$("#upasswd").val();
                if(upasswd.length==0){
                    $("#span1").html("密码不能为空");
                    count2++;
                }else {
                    $("#span1").html("");
                    count2=0;
                }
            });
            $("#upasswd1").blur(function () {
                var upasswd=$("#upasswd").val();
                var upasswd1=$("#upasswd1").val();
                if(upasswd!=upasswd1){
                    $("#span2").html("密码不一致");
                    count3++;
                }else {
                    $("#span2").html("");
                    count3=0;
                }
            });

            $("#btn").click(function(){
                $("uname").blur();
                $("#upasswd").blur();
                $("#upasswd1").blur();
                if(count1+count2+count3==0){
                    $("#form1").submit();
                }
            });

        });
    </script>
  
     <script type="text/javascript">
	//判断是否为空
	function kong() {
	
		var name = document.getElementsByName("uname")[0];
	
		if (name.value.length == 0) {
			alert(name.value.length == 0);
			return false;
		}
	}
</script>
</head>
<body>
<iframe width="420" scrolling="no" height="60" frameborder="0"
		allowtransparency="true"
		src="//i.tianqi.com/index.php?c=code&id=12&icon=1&py=shanghai&num=5&site=12"></iframe>
<form action="register.action" method="post" onsubmit=" return kong()">
    <table width="38%" border="0" align="center" valign="bottom">
        <tr>
            <td width="30%" align="right">
              用   户  名：
            </td>
            <td width="70%" align="left">
                <input type="text" name="uname" id="uname"/>
                <span class="a" id="span"></span>
            </td>
        </tr>
        <tr>
            <td align="right">
          密        码：
            </td>
            <td>
                <input type="password" name="upasswd" id="upasswd" />
                <span class="a" id="span1"></span>
            </td>
        </tr>
        <tr>
            <td align="right">
                确 认 密  码：
            </td>
            <td>
                <input type="password" name="upasswd1" id="upasswd1"/>
                <span class="a" id="span2"></span>
            </td>
        </tr>
        <tr align="center" >
            <td colspan="2" style="padding-right:80px" >
                <input type="submit" name="Submit" value="注册">
                <input type="reset" name="Submit2" value="重置">
            </td>
        </tr>
        <tr>
        <td align="center">
        ${sd1 }
         ${kong }
         ${name }
        </td>
        </tr>
    </table>
    ${sessionScope.error1}
</form>

</body>
</html>
