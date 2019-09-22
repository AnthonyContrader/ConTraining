<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List"
	import="it.contrader.dto.QuestionDTO"
	import="it.contrader.dto.CategoryDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/mainstyle.css" rel="stylesheet">
<title>Question Manager</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<%@ include file="../menu/menu.jsp" %>

<div class="main mainContainer">
	<%
		List<QuestionDTO> list = (List<QuestionDTO>) request.getAttribute("list");
		List<CategoryDTO> categories = (List<CategoryDTO>)request.getAttribute("categories");
	%>

	<table>
		<tr>
			<th>ID</th>
			<th>Argument</th>
			<th>Testo della domanda </th>
			<th>Risposta1</th>
			<th>Risposta2</th>
			<th>Risposta3</th>
			<th>Tempo di risposta</th>
			
			
			<th></th>
			<th></th>
		</tr>
		<%
			for (QuestionDTO q : list) {
		%>
		<tr>
			<td><a href=QuestionServlet?mode=read&id=<%=q.getId()%>>
					<%=q.getId()%>
			</a>
			</td>
			<td><%=q.getArgument()%></td>
			<td><%=q.getText()%></td>
			<td><%=q.getAnswer1()%></td>
			<td><%=q.getAnswer2()%></td>
			<td><%=q.getAnswer3()%></td>
			<td><%=q.getQuestiontime()%></td>
			<td><a href=QuestionServlet?mode=read&update=true&id=<%=q.getId()%>>Edit</a>
			</td>
			<td><a href=QuestionServlet?mode=delete&id=<%=q.getId()%>>Delete</a>
			</td>

		</tr>
		<%
			}
		%>
	</table>



	<form action="QuestionServlet?mode=insert" method="post">
		<div class="formTitle">Aggiungi una domanda</div>
		<div class="row">
		    <label for="text">Testo della domanda</label>
		    <div class="inputBox">
		      	<input type="text" id="text" name="text" placeholder="Inserisci il testo della domanda" >
		    </div>
	  	</div>
	    <div class="row">
		    <label for="answer1">Risposta1</label>
		    <div class="inputBox">
		      	<input type="text" id="answer1" name="answer1" placeholder="inserisci risposta1"> 
		    </div>
	  	</div>
	  	<div class="row">
		    <label for="answer2">Risposta2</label>
		    <div class="inputBox">
		      	<input type="text" id="answer2" name="answer2" placeholder="inserisci risposta2"> 
		    </div>
	  	</div>
	  	<div class="row">
		    <label for="answer3">Risposta3</label>
		    <div class="inputBox">
		      	<input type="text" id="answer3" name="answer3" placeholder="inserisci risposta3"> 
		    </div>
	  	</div>
	  	
	  	<div class="row">
		    <label for="questiontime">Tempo della risposta</label>
		    <div class="inputBox">
		      	<input type="text" id="questiontime" name="questiontime" placeholder="Tempo della risposta"> 
		    </div>
	  	</div>
	  	
	    <div class="row">
	    	<label for="idargument">Argument</label>
		    <div class="inputBox">
		      	<select id="idargument" name="idargument" > 
		      		<%
		      			for(CategoryDTO c : categories) {
		      		%>
			      		<option value ="<%=c.getId()%>"><%=c.getArgument() %></option>
			      	<%
		      			}
			      	%>
		      	</select>
		    </div>
	  	</div>
  	
	  	<div class="rowButton">
    		<button type="submit" >Insert</button>
	  	</div>
	</form>

</div>
<%@ include file="../css/footer.jsp" %>
</body>
</html>