<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ID CHECK</title>
<link href="/web/resources/assets/css/common.css" rel="stylesheet" type="text/css" />
<link href="/web/resources/assets/css/user.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input#idCheck").click(function(){
			$.ajax({
				url:"/web/idOverlapCheck.do",
				type:'post',
				dataType:'json',
				data:"id="+$("input[name='id']").val(),
				success:function(v){
					if(v.id!=''&&v.id.split('@')[1]!=null){
						$("span#msg").html('');
						if(v.idcheck=="true"){
							$("span#msg").html("입력하신 아이디 <strong>"+v.id+"</strong>은 사용가능한 ID 입니다.<p><a href=\"javaScript:sendParentId('"+v.id+"')\">여기를 눌러주세요</a></p>");						
						}else{
							$("span#msg").html("입력하신 아이디 <strong>"+v.id+"</strong>은 이미 사용중인 ID 입니다.<p>다른 ID를 검색하여주세요. </p>");													
						}
					}else if(v.id!=''&&v.id.split('@')[1]==null){
						$("span#msg").html('');
						$("span#msg").html('이메일 형식에 맞춰 입력해 주세요.<p>(예) example@likecar.com</p>');
					} 
				},error:function(){
					alert("error");
				}
			});
		});
		
	});
	function sendParentId(id) {
		//opener.signupfrm.id.value=id;
		opener.signupfrm.mem_id.value=id;
		self.close();
	}
</script>

</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="400" height="289"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" background="/web/resources/assets/img/popup/join_pop_bg.gif"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="45" colspan="3"><img src="/web/resources/assets/img/popup/join_pop_title2.gif" width="130" height="20" /></td>
      </tr>
      <tr>
        <td width="50" height="60">&nbsp;</td>
        <td height="60">&nbsp;</td>
        <td width="50">&nbsp;</td>
      </tr>

     <tr>
     	<td>&nbsp;</td>
        <td height="60" align="center" style="padding: 10 ">
        	<span id="msg">아이디를 입력해주세요.</span>
        </td>
        <td>&nbsp;</td>
      </tr>
        <tr>
          <td>&nbsp;</td>
          <td height="40" align="center" bgcolor="F5F5F5"><strong>ID</strong> 입력
            <input type="text" name="id" class="input" />
            <input type="image" id="idCheck" src="/web/resources/assets/img/popup/btn_confirm_re.gif" width="59" height="18" border="0" align="absmiddle"/></td>
          <td>&nbsp;</td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td height="20">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td></td>
        <td height="1" background="/web/resources/assets/img/popup/dotline_2px.gif"></td>
        <td></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
