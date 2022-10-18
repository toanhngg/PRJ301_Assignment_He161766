<%-- 
    Document   : viewFAP4
    Created on : Oct 14, 2022, 8:54:43 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link href="styleviewFAP3.css" rel="stylesheet">
                <style>
                    .container{
    margin-left: 150px;
    margin-right: 150px;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: normal;

}
#head{
    font-weight: normal;
}
.header1{
    display: flex;
    justify-content: space-between;
        margin-bottom: 30px;

}
.header1 strong{
    font-size: 15px;
    font-weight: normal;
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
.content{
    margin-top: 50px;
    box-sizing: border-box;
    width: 100%;
    text-align: center;
}
.content td{
    border-bottom: 1px solid #f0f0f0;
    background-color: #fff;
    /*width: 10%;*/
}
#headertable td{
    height: 23px;
    background-color: #6b90da;
    text-align: left;
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
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;

}
#last3 p a {
    color: #6b90da;
    text-decoration: none;
}

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
                            <td><strong style=" font-weight: bold; font-size: 13px;">FAP mobile app (myFAP) is ready at</strong></td>

                        </tr>
                        <tr>
                            <td><a href="https://apps.apple.com/app/id1527723314">
                                    <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store" /></a></td>
                            <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                                    <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store" /></a></td>
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


            <div>
                <h2>Select a course, then a group ...</h2>
                <table class="content">
                
                 <h2>... then see student list (Export data)</h2>
                
                 <table class="content">
                    <tr id="headertable">
                        <td>INDEX</td><td>IMAGE</td><td>CODE</td><td>NAME</td><td>STATUS</td><td>NOTE</td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td>
                       <td> <input type="radio" name="atendance2" value="attended"> Attended </td>
                        <td> <input type="radio" name="atendance2" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td>
                        <td> <input type="radio" name="atendance2" value="attended"> Attended </td>
                        <td> <input type="radio" name="atendance2" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td>
                        <td> <input type="radio" name="atendance2" value="attended"> Attended </td>
                        <td> <input type="radio" name="atendance2" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td>
                        <td> <input type="radio" name="atendance2" value="attended"> Attended </td>
                        <td> <input type="radio" name="atendance2" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td>
                      <td> <input type="radio" name="atendance2" value="attended"> Attended </td>
                        <td> <input type="radio" name="atendance2" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td>
                        <td> <input type="radio" name="atendance2" value="attended"> Attended </td>
                        <td> <input type="radio" name="atendance2" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td>
                        <td> <input type="radio" name="atendance7" value="attended" checked> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance7" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                             </table>
                 <input style="align-content: center;" type="submit" name="Save" value="submit">
                 
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
        </div>
    </body>
</html>
