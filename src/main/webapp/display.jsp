<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display product</title>
</head>
<body>

<h3> product display</h3>

<jsp:useBean id="object" class="jspProduct.Product" scope="session"></jsp:useBean>
<%int id=Integer.parseInt(request.getParameter("pid"));
String s=request.getParameter("pname");
int price=Integer.parseInt(request.getParameter("price"));
%>

<jsp:setProperty property="pid" name="object" value="<%=id%>"/>
<jsp:setProperty property="pname" name="object" value="<%=s %>"/>
<jsp:setProperty property="price" name="object" value="<%=price %>"/>


<br>
product id: <jsp:getProperty property="pid" name="object"/>
<br>
Product Name: <jsp:getProperty property="pname" name="object"/>
<br>
Product Price:<jsp:getProperty property="price" name="object"/>


</body>
</html>