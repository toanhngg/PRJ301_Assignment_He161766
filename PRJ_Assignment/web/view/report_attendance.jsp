<%-- 
    Document   : viewFAP5
    Created on : Oct 14, 2022, 10:01:58 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styleviewFAP3.css" rel="stylesheet">
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
            .content{
                border-bottom: 1px solid #f0f0f0;
                background-color: #fff;
                width: 100%;
            }
            #headertable td{
                height: 23px;
                background-color: #6b90da;
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
                    <div>
                        <h1><span style=" font-weight: normal;">FPT University Academic Portal</span></h1>
                    </div>
                    <div>
                        <table>
                            <tr>
                                <td><strong style=" font-weight: bold;
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
                            <span id="homee"><a href="">Home</a>&nbsp;|&nbsp;<b> Groups</b></span>
                            <div class="choose">
                                <a href="">
                                    <span>anhnthe161766</span></a> | <a href="">logout</a> |
                                <span>CAMPUS: FPTU-Hòa Lạc</span>
                            </div>
                        </div>
                    </div>

                    <h2>... then see student list (Export data)</h2>

                    <table class="content">
                        <tr id="headertable">
                            <td>No.</td><td>ID Number</td><td>NAME</td><td>% Absent</td>
                                <c:forEach items="${requestScope.session}" var="d">
                                    <td>Sl${d.id}</td>
                                </c:forEach>
                                    </td>
                        </tr><!-- comment -->    
                        <c:forEach items="${requestScope.studentsatt}" var="a" varStatus="loop">
                            <tr>
                                <td>${loop.index+1}</td>
                                <td>${a.student.id}
                                    <input type="hidden" name="stdid" value="${a.student.id}"/>
                                </td>

                                <td>${a.student.name}</td>
                                <td></td>
                                 <c:forEach items="${requestScope.session}" var="d">
                                   <td>${a.present}</td>
                                </c:forEach>

                            </tr>   

                        </c:forEach>



                    </table>

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
            </body>
        </html>
