<%--
  Created by IntelliJ IDEA.
  User: Rhonniel
  Date: 19/12/2018
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Confirmation</title>
</head>
<body>
The student is confirmed: ${student.firstName} ${student.lastName}
<br><br>
Country: ${student.country}
<br><br>
Favorite: ${student.favoriteLanguage}
<br><br>
Operating Systems:
<ul>
    <c:forEach var="temp" items="${student.operatingSystems}">
    <li>${temp}</li>

    </c:forEach>
</ul>
</body>
</html>
