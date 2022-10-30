<%-- 
    Document   : login
    Created on : Oct 23, 2022, 3:01:26 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .from{
               width: 50%;
               text-align: center;
               margin-top: 300px;
/*               margin-left: 60px;*/
            }
            .body1{
                display:flex;
            }
            #click{
                background-color: coral;
                border-radius: 2px;
                text-decoration: none;
                color: black;
                font-weight: bold;
                padding: 9px; 
                margin-left: 100px;
/*                margin-bottom: 100px;*/
            }
            fieldset{
                margin-top: 30px;
                margin-left: 38px; 
            }
        </style>
    </head>
    <body>
        <div class="body1">
            <div>
                <img style="height: 650px; width: 80%;" src="https://tostemvietnam.com/wp-content/uploads/2021/10/FPT-University-8.jpg"/> 
            </div>
            <div>
              <form class="from" action="login" method="POST" >
                     <EM id="click">LogIn</EM>
            <fieldset>
                Username : <br>
                <input type="text" name="username" value ="sonnt"> 
                <br> Password : <br>
                <input type="password" name="password" value ="">
                <br><br>
                <input type="submit" value="Login">
                <input type="reset" value="Reset">
            </fieldset>
        </form>    
            </div>
        </div>
       
    </body>
</html>
