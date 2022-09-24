<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
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
<h1>Welcome</h1>



<br>
<br>
<h1>'Are you concerned about COVID-19? Review health risks that may make any symptom more serious'.</h1>
<br>
<h1>Use the symptom checker below and get the right care for whatever you're facing</h1>
<h1><a href="test.htm" id="ques" class=h1>
symptom checker
</a>
</h1>

<BR>

<br>
<BR>
<h1><a href="feedback.htm" id="fb">FEEDBACK</a></h1>
<br>
<img alt="vaccine" src='<c:url value="/resources/img/Vaccine-for-COVID-19.jpg"></c:url>'/>
</body>
</html>
