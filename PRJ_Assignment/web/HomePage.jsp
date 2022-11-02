<%-- 
    Document   : HomePage
    Created on : Oct 23, 2022, 3:28:28 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><!-- comment -->
        <style>
            .from{
                box-sizing: 1px;
                align-content: center;

            }
            #imgpic{
                margin-top: 100px;
                width: 100%;
                height: 500px;
                text-align: center;
            }
            .from1{
                display: flex;
                margin-left:   auto;
                margin-right:   auto;
                /*text-align: center;*/
            }
            #click{
                background-color: #f0f0f0;
                border-radius: 2px;
                text-decoration: none;
                color: black;
                font-weight: bold;
                padding: 10px; 
                margin-left: 200px;
            }

        </style>
    </head>
    <body>
        <div class="from">
            <div class="from1">
                <center>
                    <h1 style="margin-left: 100px;">Welcome to My FAP </h1> 
                </center>

                <img src="https://fpteducationgroup.files.wordpress.com/2015/03/cropped-logo-co-kem-3-sao-012.png" 
                     style="width: 300px;height: 80px ; margin-left: 650px" alt="FPTU logo" /></a>
            </div>
            <c:if test="${sessionScope.account ne null}">
                Hello ${sessionScope.account.displayname} 
                <a id="click" href="logout"><EM>Log Out</EM></a> 
            </c:if>
            <c:if test="${sessionScope.account eq null}">
                <a id="click" href="login"><EM>Log In</EM></a> 
            </c:if>
        </div>
        <img id="imgpic" src="https://daihoc.fpt.edu.vn/wp-content/uploads/2019/10/nha-alpha.jpg"> 


    </body>
</html>
