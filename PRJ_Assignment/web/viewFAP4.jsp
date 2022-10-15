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
                    <tr id="headertable">
                        <td>CAMPUS	</td><td>TERM	 </td><td> DEPARTMENT	 </td><td> COURSE	</td><td> 	GROUP </td>
                    </tr>
                    <tr>
                        <td>FU-HL</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <th rowspan="14">
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    <tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr><tr>
                        <td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td>
                    </tr>
                    </th>
                </table>
                
                 <h2>... then see student list (Export data)</h2>
                
                 <table class="content">
                    <tr id="headertable">
                        <td>INDEX</td><td>IMAGE</td><td>MEMBER</td><td>CODE</td><td>SURNAME</td><td>MIDDLE NAME</td><td>GIVEN NAME</td><td>STATUS</td><td>NOTE</td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance1" value="attended" > Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance1" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance2" value="attended"> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance2" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance3" value="attended"> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance3" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance4" value="attended"> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance4" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance5" value="attended"> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance5" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance6" value="attended"> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance6" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance7" value="attended" checked> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance7" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance8" value="attended"> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance8" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance9" value="attended"> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance9" value="absent"> Absent</td>
                        <td> Note: <input type="text" name="note"> </td>
                    </tr>
                    <tr>
                        <td>1</td><td>2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td>
                        <td> <input type="radio" name="atendance10" value="attended"> Attended &nbsp; &nbsp;&nbsp;
                        <input type="radio" name="atendance10" value="absent"> Absent</td>
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
