<%--
  Created by IntelliJ IDEA.
  User: zackshank
  Date: 9/29/14
  Time: 11:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="branded"/>
    <title>Candy List</title>
</head>

<body>
<a href="${g.createLink(controller: 'candy', action: 'newCandy')}">Create Candy</a>
<h1>The Candy List</h1>
<g:each in="${candies}" var="candy">
    <h2>${candy.name}</h2>
    <a href="${g.createLink(controller: 'candy', action: 'deleteCandy', id: candy.id)}">Delete</a>
    <g:if test="${candy.ingredients.contains('Peanuts') || candy.ingredients.contains('Peanut Butter')}">
        <h3 style="color: red">Warning! This product contains nuts!</h3>
    </g:if>
    <ul>
        <g:each in="${candy.ingredients}" var="ingredient">
            <li>${ingredient}</li>
        </g:each>
    </ul>
    <hr />
</g:each>
</body>
</html>