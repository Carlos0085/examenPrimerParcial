<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="profeQuery" dataSource="jdbc/Examen">
    SELECT NombreProfesor FROM tec_carloselizondo.profesor WHERE tec_carloselizondo.profesor.NumNomina = ? <sql:param value="${param.NumNomina}"/>
</sql:query>
<c:set var="teacherDetails" value="${profeQuery.rows[0]}"/>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Profes</title>
    </head>
    <body>
        <table>
            <tr>
                <th colspan="2">Materias:</th>
            </tr>
            <tr>
                <td><strong>Materia impartida por: </strong></td>
                <td><strong>${teacherDetails.NombreProfesor}</strong></td>
            <tr>
        </table>
    </body>
</html>