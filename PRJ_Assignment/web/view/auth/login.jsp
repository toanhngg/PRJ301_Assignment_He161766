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
/*            .from{
                width: 0%;
                text-align: center;
                margin-top: 300px;
                                 margin-left: 60px;
            }*/
/*            .body1{
                display:flex;
            }*/
            /*
            #click{
                background-color: coral;
                border-radius: 2px;
                text-decoration: none;
                color: black;
                font-weight: bold;
                padding: 9px;
                margin-left: 100px;
                                margin-bottom: 100px;
            }
            fieldset{
                margin-top: 30px;
                margin-left: 38px;
            }*/
            .inputs{
                overflow: hidden;
                margin-right: 130px;
                margin-top: 250px;
            }

            input{
                width: 100%;
                padding: 10px;
                margin-top: 25px;
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

                /*                input{
                                    margin: 0;
                                    margin-right: 7px;
                                    width: auto;
                                }*/
            }



            .button1 {
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
            label {

                display: block;
                position: relative;
                margin-left: 30px;
            }
            label::before{
                content:' \f00c';
                position: absolute;
                font-family: FontAwesome;
                background: transparent;

                border: 3px solid #70F570;
                border-radius: 4px;
                color: transparent;
                left: -30px;

                transition: all 0.2s linear;
            }

            label:hover::before{
                font-family: FontAwesome;
                content:' \f00c';
                color: #fff;
                cursor: pointer;
                background: #70F570;
            }

            label:hover::before .text-checkbox{
                background: #70F570;
            }
            // label span.text-checkbox:hover{background: #70F570;}


            label span.text-checkbox {
                display: inline-block;
                height: auto;
                position: relative;
                cursor: pointer;
                transition: all 0.2s linear;
            }
            label input[type="checkbox"] {
                display: none;
            }
          
        </style>
    </head>
    <body>
        <div class="form">
                <img style="height: 650px; width: 60%;" src="https://tostemvietnam.com/wp-content/uploads/2021/10/FPT-University-8.jpg"/> 
         

            <div>
                <form class="inputs" action="login" method="POST" >
                    <input type="text" placeholder="user name"name="username">
                    <br>
                    <input type="password" placeholder="password" name="password">


                    <br><br>

                    <div class="remember-me--forget-password">
                        <!-- Angular -->
                        <label>
                            <input type="checkbox" name="item" checked/>
                            <span class="text-checkbox">Remember me</span>
                        </label>

                    </div>

                    <br>
                    <input class="button1" type="submit" value="LOGIN">
                    </div>
                </form>    
            </div>

        </div>

    </body>
</html>
