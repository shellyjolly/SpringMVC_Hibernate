<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Page</title>
</head>
<style>
body {
	text-align: center;
	padding: 40px 0;
	background: #EBF0F5;
}

h1 {
	color: #88B04B;
	font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
	font-weight: 900;
	font-size: 15px;
	margin-bottom: 10px;
}

p {
	color: #404F5E;
	font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
	font-size: 20px;
	margin: 0;
}

i {
	color: #9ABC66;
	font-size: 100px;
	line-height: 200px;
	margin-left: -15px;
}

.card {
	background: white;
	padding: 60px;
	border-radius: 4px;
	box-shadow: 0 2px 3px #C8D0D8;
	display: inline-block;
	margin: 0 auto;
}
</style>
<body>

</body>
<%-- <c:forEach items="${feedbacks}" var="feedbacks"> --%>
<h1>
	<c:out
		value="Hello ${feedbacks.name} with email :${feedbacks.email}  with rating :${feedbacks.rating} and message ' ${feedbacks.message}' is saved" />
		<br>
		Thanks for Feedback!!!
</h1>
<br>
<%-- </c:forEach> --%>
<%-- value="Hello ${feedbacks.name} with email :${feedbacks.email} : regarding : ${feedbacks.regarding} : with code : ${feedbacks.code} : ,rating :${feedbacks.rating}: and message: ${feedbacks.message} is saved" /> --%>

<%-- <c:if test="${not empty feedbacks}">
result is: ${feedbacks}
<h2>Feedbacks Received!!!</h2>
</c:if>
 <table>
 <c:if test="${not empty feedbacks}">
    <c:forEach items="${lists}" var="feedbacks">
      <c:out value="Hello ${feedbacks.name} : ${feedbacks.email} : ${feedbacks.regarding} : ${feedbacks.code} : ${feedbacks.rating}: ${feedbacks.message}"/>
      <br>
</c:forEach>
</c:if> --%>
</table>
</body>
</html>