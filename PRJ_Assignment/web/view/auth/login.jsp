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
            .inputs{
                overflow: hidden;
                margin-right: 130px;
                margin-top: 250px;
            }

            input{
                padding: 10px;
                /*margin-top: 25px;*/
                font-size: 16px;
                border: none;
                outline: none;
                border-bottom: 2px solid #B0B3B9;
            }
            .form {
                margin: 0 auto;
                width: 80%;
                background: #FFFFFF;
                border-radius: 10px;
                overflow: hidden;
                display: flex;
                flex: 1 1 100%;
                align-items: stretch;
                justify-content: space-between;
                box-shadow: 0 0 20px 6px #090b6f85;
            }
            .remember-me--forget-password {
                display: flex;
                justify-content: space-between;
                align-items: center;
            }



            .button1 {
                width: 100%;
                float: right;
                color: #fff;
                font-size: 16px;
                padding: 12px 35px;
                border-radius: 2px;
                display: inline-block;
                border: 0;
                outline: 0;
                box-shadow: 0px 4px 20px 0px #49c628a6;
                background-image: linear-gradient( 135deg, #70F570 10%, #49C628 100%);
            }
        </style>
    </head>
    <body>
        <%
        Cookie[] listCookie = request.getCookies();
        String user = "";
        String pass = "";
            int co = 0;
            if(listCookie != null){
        while(co < listCookie.length){
              if(listCookie[co].getName().equals("user")){
               user = listCookie[co].getValue();
        }
              if(listCookie[co].getName().equals("pass")){
               pass = listCookie[co].getValue();
        }
        co++;
        }
        }
        %>
        <div class="form">
            <img style="height: 650px; width: 60%;" src="https://tostemvietnam.com/wp-content/uploads/2021/10/FPT-University-8.jpg"/> 


            <div>
                <form class="inputs" action="login" method="POST" >

                    <input type="text" placeholder="username"name="username" value="<%out.print(user);%>">
                    <br>
                    ${usermessage}
                    <br>
                    <input type="password" placeholder="password" name="password" value="<%out.print(pass);%>">
                    <br>
                    ${passmessage}


                    <br><br>


                    <div class="remember-me--forget-password">
                        <!-- Angular -->
                        <label>
                            <input class="text-checkbox" type="checkbox" name="remember_information" value="ok" checked />            
                            Remember me
                        </label>

                    </div>

                    <br>
                    <input class="button1" type="submit" value="LOGIN">
                    ${loginmessage}
                    </div>
                </form>    
            </div>

        </div>

    </body>
</html>
