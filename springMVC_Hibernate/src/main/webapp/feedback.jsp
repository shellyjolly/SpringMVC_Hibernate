<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback form</title>
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
<h1>FEEDBACK REQUESTED!!!</h1>
<form action="addFeedback" method="get">
<input id="name" name="name" required>
<!-- pattern="[A-Za-z]" title="Two or more characters" type="text" class="validate" data-error="#e1" required> -->
                  <h1><label for="name">Your First Name</label></h1><br>


              
                  <input id="email" name="email" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,3}$" title="Invalid Email Address" type="text" class="validate" data-error="#e2" required>
                  <h1><label for="email">Your Email</label></h1><br>
                 

              
                  
                   <!-- <input id="regarding" name="regarding" title="Two or more characters" type="text" class="validate" data-error="#e1" required>
                 <h1> <label for="name">Regarding</label></h1><br> -->
                  
                  

               
                 <!--  <input id="code" name="code" type="text" class="validate" data-error="#e5">
                  <h1><label for="code">Code(If any)</label></h1><br> -->
                 
                  <textarea pattern=".{1,}" title="One or more characters" id="message" name="message" class="materialize-textarea" data-error="#e4" required></textarea>
                  <h1> <label for="message">Feedback Message</label></h1><br>
                  

              
                <p>Overall Rating</p>
                <span class="overallRatings">
                  <input type="radio" name="rating" style="display:none" required/>
                  <div style="clear:both;"></div>
                  <input type="radio" id="rating-5" name="rating" value="5"/><label for="rating-5"></label>
                  <input type="radio" id="rating-4" name="rating" value="4" /><label for="rating-4"></label>
                  <input type="radio" id="rating-3" name="rating" value="3" /><label for="rating-3"></label>
                  <input type="radio" id="rating-2" name="rating" value="2" /><label for="rating-2"></label>
                  <input type="radio" id="rating-1" name="rating" value="1"/><label for="rating-1"></label>
                </span>
              </div>
              
             
                <!-- <div class="input-field col m6 s12">
                  <button type="reset" value="reset">Reset</button>
                </div> -->
                <div class="input-field col m6 s12">
                  <button type="submit" >Submit</button>
                </div>                  
</form>
</body>
</html>
