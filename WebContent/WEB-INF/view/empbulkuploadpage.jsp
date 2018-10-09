<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>itvilla.com</title>
</head>
<body>

  <h1> Upload Your Excel file in the format provided by ADMIN </h1>
  <hr />

  <h3> </h3>
  <form action="empFileUpload" method="post" enctype="multipart/form-data">
    <table>
      <tr>
        <td>Select File</td>
        <td><input type="file" name="excelfile" accept=".xls,.xlsx"></td>
        <td><button type="submit">Upload</button></td>
      </tr>
    </table>
  </form>
  <br />
  <hr />
 
 <hr />
  <span style="color: red; font-size: 14px;">${msg}</span>

</body>
