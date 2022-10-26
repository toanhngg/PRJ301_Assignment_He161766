<%-- 
    Document   : select
    Created on : Oct 27, 2022, 1:08:18 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <c:forEach items="${requestScope.slots}" var="slot">
                       <c:forEach items="${requestScope.dates}" var="d">
    <c:forEach items="${requestScope.sessions}" var="ses">
            <c:when test="${helper.compare(ses.date,d) eq 0 and (ses.timeslot.id eq slot.id)}">
        <a id="sub" href="check?id=${ses.id}"> Check Attendance</a>
<a href="report?gid=${ses.group.id}&lid=${ses.lecturer.id}&subid=${ses.group.subject.id}"> Report </a>
</c:when>
    </c:forEach>
    </c:forEach>
    </c:forEach>
                </body>
                </html>
