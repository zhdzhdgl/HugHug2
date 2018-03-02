<%@page import="java.sql.ResultSet"%>
<%@page import="memberDb.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%  request.setCharacterEncoding("euc-kr"); %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--result가 1이 맞고, email이 admin@hughug.com이면 회원관리 페이지로 보냅니다. 
	result가 1이 맞고, email이 adim이 아니면 메인.jsp로 이동합니다. 
	eq = equal , ne = not equal 
	문자 비교할때는 위에 처럼 쓰고 숫자 비교할때는 ==, != 이렇게 씀.
	--> 
	
<c:if test="${result == 1}">
	<c:if test="${inputEmail eq 'admin@hughug.com'}"></c:if>

		response.sendRedirect("/HugHug/mb_view/list.jsp");
		
	}else{
		String userName = instance.MainName(inputEmail);
		session.setAttribute("userEmail", inputEmail);
		session.setAttribute("userName", userName);        
		response.sendRedirect("Main.jsp");  
	}
</c:if>

<c:if test="${result == 0}">
<script type="text/javascript">
alert("비밀번호가 맞지 않습니다");
history.go(-1);
</script>
</c:if>

<c:if test="${result == -1}">
<script type="text/javascript">
alert("이메일이 존재하지 않습니다.");
history.go(-1);
</script>
</c:if>

</body>
</html>