<%--
  Created by IntelliJ IDEA.
  User: supra
  Date: 12/08/2021
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Age validator</title>
</head>
<body>
    <form method="post">
        <fieldset>
            <div>
                <label for="firstName">Name</label>
                <input name="firstName" id="firstName">
            </div>
            <div>
                <label for="lastName">Last name</label>
                <input name="lastName" id="lastName">
            </div>
            <div>
                <label for="age">Age</label>
                <input type="number" name="age" id="age" min="0">
            </div>
            <div>
                <label>Gender</label>
                <select name="gender" id="gender">
                    <option value="MALE">Male</option>
                    <option value="FEMALE">Female</option>
                </select>
            </div>
        </fieldset>
        <input type="submit" value="Save!">
    </form>
<ol>
    <c:forEach items="${applicationScope.people}" var="person">
        <li>
            <c:out value="${person.firstName} - ${person.lastName}"/> (${person.age} yrs.)/
            ${person.gender == 'MALE' ? "Male" : 'Female'}
            <c:if test="${person.age >= 18}">
                <span style="color: lawngreen">On age</span>
            </c:if>
            <c:if test="${person.age < 18}">
                <span style="color: orangered">Under age</span>
            </c:if>
        </li>
    </c:forEach>
</ol>
</body>
</html>
