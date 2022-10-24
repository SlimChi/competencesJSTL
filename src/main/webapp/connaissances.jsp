<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="competencesBean" scope="request" class="fr.cs.javajstl.bean.CompetencesBean"/>
<head>
    <title>Connaissances</title>
    <link rel="stylesheet" href="connaissance.css">
</head>
<body>
<h1>Notion Objet et Java maitrisées
</h1>
<h2>Veuillez valider les notions Java que vous connaissez afin de poursuivre ce tutoriel :</h2>
<br/>
<form action="action.xx" method="post">
    <table>
        <thead>
        <tr>
            <th>Test de connaissances Java</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Votre nom</td>
            <td><input type="text" name="nom" value=""/></td>
        </tr>
        <c:forEach items="${competencesBean.competences}" var="competence">
            <tr>
                <td>${competence}</td>
                <td><input type="checkbox" name="notionJava" class="checkBox" value="${competence}"></td>
            </tr>
        </c:forEach>
        <tr>
            <td><input type="submit" value="Valider" class="button"></td>
        </tr>

        </tbody>
    </table>

</form>
</body>
</html>