<%--
  Created by IntelliJ IDEA.
  User: Rhonniel
  Date: 19/12/2018
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
</head>
<body>
    <from:form action="processForm" modelAttribute="student">
        First name: <form:input path="firstName"/>
        <br><br>
        Last name: <form:input path="lastName" />
        <br><br>

        Country:
        <form:select path="country">
          <form:options items="${student.countryOptions}"/>
        </form:select>
        <br><br>

        Favorite Language:

        Java <from:radiobutton path="favoriteLanguage" value="Java"/>
        C# <from:radiobutton path="favoriteLanguage" value="C#"/>
        PHP <from:radiobutton path="favoriteLanguage" value="PHP"/>
        Ruby <from:radiobutton path="favoriteLanguage" value="Ruby"/>
        <br><br>
        Operating System:
        Linux <from:checkbox path="operatingSystems" value="Linux"/>
        Mac OS <from:checkbox path="operatingSystems" value="Mac OS"/>
        MS Windows <from:checkbox path="operatingSystems" value="MS Windows"/>

        <br><br>
        <input type="submit" value="Submit">
    </from:form>
</body>
</html>
