<%-- 
    Document   : viewFAP
    Created on : Oct 9, 2022, 2:19:42 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--<link href="styleviewFAP1.css" rel="stylesheet">-->
        <style>
            .container{
                margin-left: 120px;
                margin-right: 120px;
                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
                font-weight: normal;
                font-size: 13px;

            }
            .header1{
                display: flex;
                justify-content: space-between;
                margin-bottom: 30px;
            }
            #head{
                font-weight: normal;
            }
            .header1 strong{
                font-size: 14px;
                /*font-weight: normal;*/
            }
            .header2{
                display: flex;
                justify-content: space-between;
                background-color: #F3F3F3;
                padding-bottom: 10px;
                padding-top: 10px;
            }
            #homee{
                margin-left: 20px;
            }
            #homee a{
                text-decoration: none;
            }
            .choose{
                margin-right: 20px;
                font-size: 11px;
                font-weight: 700;
            }
            .choose a {
                background-color: #0fcc45;
                padding: 3px;
                border-radius: 2px;
                text-decoration: none;
                color: white;
                font-weight: bold;
            }

            .choose span {
                background-color: #0fcc45;
                padding: 3px;
                border-radius: 2px;
                text-decoration: none;
                color: white;
                font-weight: bold;
            }
            .nd{
                font-size: 14px;
            }
            .nd h2{
                font-weight: normal;

            }
            .content1 h2{
                margin-top: 50px;
                font-size: 30px;
            }
            .timetable{
                font-size: 14px;
                width: 100%;
            }
            .date{
                text-indent: initial;
                height: 23px;
                background-color: #f7c8d0;
                text-align: left;
            }
            .date th{
                font-weight: normal;
            }

            tbody td{
                box-sizing: border-box;
                border-bottom: 1px solid #f0f0f0;
                background-color: #fff;
                width: 10%;
                align-content: center;
            }
            #materials{
                background-color: #f0ad4e;
                color: white;
                font-size: 75%;
                border-radius: 0.25em;
                text-align: center;
                font-weight: 700;
                padding: 0.2em 0.6em 0.3em;
                text-decoration: none;

            }
            #meet{
                background-color: #777;
                font-weight: 700;
                font-size: 75%;
                border-radius: 0.25em;
                padding: 0.2em 0.6em 0.3em;
                color: white;
                text-decoration: none;
            }
            #sub{
                text-decoration: none;
                color: cornflowerblue;
            }
            #time{
                background-color: #5cb85c;
                display: inline;
                padding: 0.2em 0.6em 0.3em;
                font-size: 75%;
                font-weight: 700;
                line-height: 1;
                color: #fff;
                text-align: center;
                white-space: nowrap;
                vertical-align: baseline;
                border-radius: 0.25em;
            }
            .last{
                font-size: 13px;
                font-weight: 100;
            }
            #last2{
                font-size: 13px;
                font-weight: 100;
            }
            #last2 a {
                color: #6b90da;
                text-decoration: none;

            }
            #last3{
                font-size: 13px;
                font-weight: 100;
            }
            #last3 p a {
                color: #6b90da;
                text-decoration: none;
            }
            .option{
                margin-left: auto;
                margin-right: auto;

            </style>
        </head>
        <body>
            <div class="container"> 
                <div class="header1">
                    <div id="head">
                        <h1><span id="head">FPT University Academic Portal</span></h1>
                    </div>
                    <div>
                        <table>
                            <tr>
                                <td><strong  style=" font-weight: bold;
                                             font-size: 13px;">FAP mobile app (myFAP) is ready at</strong></td>
                            </tr>
                            <tr>
                                <td><a href="https://apps.apple.com/app/id1527723314">
                                        <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px;
                                             height: 40px" alt="apple store" /></a></td>
                                    <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                                            <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px;
                                            height: 40px" alt="google store" /></a></td>

                                </tr>
                            </table> 
                        </div>

                    </div>
                    <div>
                        <div  class="header2">
                            <span id="homee"><a href="">Home</a>&nbsp;|&nbsp;<b>View Schedule</b></span>
                            <div class="choose">
                                <a href="">
                                    <span>${sessionScope.account.username}</span></a> | <a href="../logout">logout</a> |
                                <span>CAMPUS: FPTU-Hòa Lạc</span>
                            </div>
                        </div>
                        <table>
                            <tr>
                                <td>
                                    <div class="content1">
                                        <div class="nd">

                                            <h2>Timetbale</h2>
                                            <div>
                                                <p>
                                                    Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br />
                                                    Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br />
                                                    Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br />
                                                    Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br/>
                                                    Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br/>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="option">
<!--                                            Lecturer: <input type="text" readonly="readonly" value="${sessionScope.account.username}"/>-->
                                            <form action="timetable1" method="GET">
                                                <input type="hidden" name="username" value="${sessionScope.account.username}"/>
                                                From:<input type="date" name="from" value="${requestScope.from}"/>
                                                To: <input type="date" name="to" value="${requestScope.to}"/>
                                                <input type="submit" value="View"/> 
                                            </form>
                                        </div>

                                        <table class="timetable">
                                            <tr >
                                                <th rowspan="2" class="date">
                                                Slot 
                                            </th>
                                                <c:forEach items="${requestScope.dates}" var="d"> 
                                                    <th class="date">${helper.getDayNameofWeek(d)}</th>
                                                    </c:forEach>
                                            </tr>    
                                            <tr>
                                                <c:forEach items="${requestScope.dates}" var="d">
                                                    <th class="date">${d}</th>
                                                    </c:forEach>
                                            </tr>
                                            <c:forEach items="${requestScope.slots}" var="slot">

                                                <tr>
                                                    <td>${slot.nameSlot}</td>
                                                    <c:forEach items="${requestScope.dates}" var="d">
                                                        <td>
                                                            <c:forEach items="${requestScope.sessionst}" var="ss">
                                                                <c:choose>
                                                                    <c:when test="${helper.compare(ss.date,d) eq 0 and (ss.timeslot.id eq slot.id)}">
                                                                        <a>${ss.group.name}-${ss.group.subject.name}</a>
                                                                        <br/> at
                                                                        ${ss.room.name}
                                                                        </br>
                                                                        <div id="time">${slot.description}</div>
                                                                        <c:choose>
                                                                            <%-- Khi tham số color == 'red' --%>
                                                                            <c:when test="${ss.attandated eq true}">
                                                                                (<font color=Green>Attended</font>)
                                                                            </c:when>  

                                                                            <%-- Khi tham số color == 'blue' --%>
                                                                            <c:when test="${ss.attandated eq false}">
                                                                                (<font color=red>Absent</font>)
                                                                            </c:when> 
                                                                                <c:when test="${ss.attandated eq null}">
                                                                                (<font color=red>Not yet</font>)
                                                                            </c:when> 

                                                                            <%-- Các trường hợp khác --%>
                                                                            <c:otherwise>
                                                                                (<font color=red>Not yet</font>)
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </c:when> 
                                                                    <%-- Các trường hợp khác --%>
                                                                    <c:otherwise> 

                                                                    </c:otherwise>
                                                                </c:choose>

                                                            </c:forEach>

                                                        </td>
                                                    </c:forEach>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                        <div class="last">
                                            <div>
                                                <p>
                                                    <b>More note / Chú thích thêm</b>:
                                                </p>
                                                <div><ul><li>(<font color='green'>attended</font>): AnhNTHE161766 had attended this activity / Nguyễn Tố Anh đã tham gia hoạt động này</li><li>(<font color='red'>absent</font>): AnhNTHE161766 had NOT attended this activity / Nguyễn Tố Anh đã vắng mặt buổi này</li>   <li>(-): no data was given / chưa có dữ liệu</li> </ul></div>
                                                <p>
                                                </p>
                                            </div>
                                            </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <br />
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <div id="last2">
                                                                    <div>
                                                                        <br />
                                                                        <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span>Phòng dịch vụ sinh viên</span>: Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a>.
                                                                        Điện thoại: <span> </span>
                                                                        <br />
                                                                    </div>                         
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td id="last3">
                                                                <p style="text-align: center">
                                                                    © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
                                                                    <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                                                                </p>     </td>  
                                                        </tr>
                                        </div>
                                    </div>
                        </table>
                    </div>
            </body>
        </html>