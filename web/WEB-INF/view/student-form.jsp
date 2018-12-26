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
            <from:option value="Japan" label="Japan"/>
            <from:option value="Dominican Republic" label="Dominican Republic"/>
            <from:option value="France" label="France"/>
            <from:option value="India" label="India"/>

        </form:select>
        <br><br>
        <input type="submit" value="Submit">
    </from:form>
</body>
</html>
