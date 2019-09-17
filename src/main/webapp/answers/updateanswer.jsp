<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.AnswersDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Edit Answer</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active" href="AnswerServlet?mode=answerlist">Answers</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>
<div class="main">

<%AnswersDTO a = (AnswersDTO) request.getAttribute("dto");%>


<form id="floatleft" action="AnswerServlet?mode=update&id=<%=a.getId()%>" method="post">
  
  <div class="row">
    <div class="col-25">
     <label for="idquestion">id question</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="idquestion" name="Idquestion" value=<%=a.getIdquestion()%>> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="iduser">Id user</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="iduser" name="iduser" value=<%=a.getIduser()%>> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="answer">Answer position</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="answer" name="answer" value=<%=a.getAnswer()%>> 
    </div>
  </div>
      <button type="submit" >Edit</button>
</form>

	
</div>
<br>
<%@ include file="../css/footer.jsp" %>	
</body>
</html>