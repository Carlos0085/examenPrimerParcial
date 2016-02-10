<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<sql:query var="materiaE" dataSource="jdbc/Examen">
    SELECT NumNomina, NombreMateria FROM tec_carloselizondo.materia;

</sql:query>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Examen Primer Parcial</title>
    </head>
    <body>
        <h1>Examen Primer Parcial Laboratorio</h1>
        <h1>Carlos Elizondo  947334</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>IFPWAFCAD offers expert counseling in a wide range of fields.</th>
                </tr>
            </thead>
            <tbody
                <tr>
                    <td>To view the contact details of an IFPWAFCAD certified former
                        professional wrestler in your area, select a subject below:</td>
                </tr>
                <tr>
                    <td>
                        <form action="response.jsp">
                            <strong>Select a subject:</strong>
                            <select name="NumNomina">
                                <c:forEach var="row" items="${materiaE.rows}">
                                    <option value="${row.NumNomina}">${row.NombreMateria}</option>
                                </c:forEach>
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>



    </body>
</html>
