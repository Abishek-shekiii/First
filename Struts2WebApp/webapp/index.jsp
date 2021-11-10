<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<script type="text/javascript">
	function loadXMLDoc(){
		var xmlhttp;
		var k = document.getElementById("email").value;
		var urls = "pass.jsp?var="+k;
		if(window.XMLHttpRequest){
			xmlhttp = new XMLHttpRequest();
			}else
				{
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange=function(){
				if(xmlhttp.readyState==4){
						document.getElementById("err").innerHTML=xmlhttp.responseText;
					}
				}	
				xmlhttp.open("GET",urls,true);
				xmlhttp.send();
	}
</script>
</head>
<body style="background-color: lightgreen">
	<div style="margin-left:40% ; margin-top: 6%">
	<h1>www.abishek.com</h1>
	<h1>Registration Page</h1>
	<s:form action="Register">
		<s:textfield name="fname" label="Fisrt Name"></s:textfield>
		<s:textfield name="lname" label="Last Name"></s:textfield>
		<s:textfield name="email" label="E-mail" id="email" onekeyup="loadXMLDoc()"></s:textfield>
		<s:password name="psword" label="Password"></s:password>
		<s:submit value="Submit"></s:submit>
	</s:form>
	</div>
</body>
</html>