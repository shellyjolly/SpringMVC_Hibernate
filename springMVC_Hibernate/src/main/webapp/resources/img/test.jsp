<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<form action="verify.htm" method="get" class="background-color: #F97307;">
<%int i=1; %>
<c:forEach items="${questionslist}" var="question">
<h1><c:out value="${question.question}"/></h1>
<select name=<%=i++ %> id="${question.id}">

  <option value="${question.opt1}">${question.opt1}</option>  
  <option value="${question.opt2}">${question.opt2}</option>
  <option value="${question.opt3}">${question.opt3}</option>
  <option value="${question.opt4}">${question.opt4}</option>
</select>
<br>
<br>
</c:forEach>
<input type="submit"/>
</form>
</body>
</html>