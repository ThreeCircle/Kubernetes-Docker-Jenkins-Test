<%@page import="java.time.ZoneId"%>
<%@page import="java.time.ZonedDateTime"%>
<%@ page import="java.time.LocalTime"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.util.Random" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP_TEST</title>
	<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
	<%!
		private int num;
	%>
	<%
		Random rand = new Random(System.nanoTime());
		num = rand.nextInt(100);
		
		LocalDateTime today = LocalDateTime.now();
		LocalDate date = today.toLocalDate();
		LocalTime time = today.toLocalTime();
		// Date date = new Date();
		// SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss E요일");
		// String time = sdf.format(date);

	%>
	<h1>Hello World</h1>
	<ul>
		<li>접속 날짜 : <%=date %></li>
		<li>접속 시간 : <%=time %></li>
		<li><input type="text" id="time"></li>
	</ul>
	
	<hr>
	<br>
	<div>행운의 숫자는 <p class="highlight"><%=num %></p> 입니다.</div>
	<br>
	<h2>숫자 입력:</h2>

	<input type="text" id="inputNumber" value="">
	<button onclick="displayNumber()">확인</button>

	<h2>입력한 숫자:</h2>

	<input type="text" id="outputNumber" value="" readonly>
	<br>
	<br>	
	<a href="test.jsp"><button>test.jsp</button></a>
	<br>
	<br>
	<form action="test.jsp">
		<input type="text" id="id" placeholder="id" required>
		<input type="password" id="pw" placeholder="pw" required>
		<button>로그인</button>
	</form>

	<script type="text/javascript">
		function displayNumber() {
	 		var inputNumber = document.getElementById("inputNumber").value;
	 		document.getElementById("outputNumber").value = inputNumber;
	 		if (inputNumber == <%=num%>){
	 			alert("행복하세요!");
	 		}
		}
		
		function displayTime() {
			var date = new Date();
			var hours = date.getHours();
			var minutes = date.getMinutes();
			var seconds = date.getSeconds();
			document.getElementById('time').value = hours + ":" + minutes + ":" + seconds
		}
		setInterval(displayTime, 1000);
	</script>
</body>
</html>