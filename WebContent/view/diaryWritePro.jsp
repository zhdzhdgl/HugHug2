<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${emotion == '기쁨'}">
	<script type="text/javascript">
	<a href = "Main" Onclick = "alert('기분이 좋당!')";>
	</script>
</c:if>

<c:if test="${emotion == '보통'}">
	<script type="text/javascript">
	//MainDb로 보내서 일기 list뿌려야함.
		<a href = "Main" Onclick = "alert('기분이 보통이야')";/>
	</script>
</c:if>

<c:if test="${emotion == '나쁨'}">
	<script type="text/javascript">
	<a href = "Main" Onclick = "alert('무슨 일 있어?')";/>
	</script>
</c:if>

</body>
</html> 