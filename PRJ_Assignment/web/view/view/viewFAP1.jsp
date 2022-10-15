<%-- 
    Document   : viewFAP
    Created on : Oct 9, 2022, 2:19:42 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styleviewFAP1.css" rel="stylesheet">
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
                        <td><strong  style=" font-weight: bold; font-size: 13px;">FAP mobile app (myFAP) is ready at</strong></td>
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
                <span id="homee"><a href="">Home</a>&nbsp;|&nbsp;<b>View Schedule</b></span>
                <div class="choose">
                    <a href="">
                        <span>anhnthe161766</span></a> | <a href="">logout</a> |
                    <span>CAMPUS: FPTU-Hòa Lạc</span>
                </div>
            </div>
            <table>
                <tr>
                    <td>
                        <div class="content1">
                            <div class="nd">
                                
                            <h2>Activities for
                                <span>AnhNTHE161766 (Nguyễn Tố Anh)</span></h2>
                            <p>
                                <b>Note</b>: These activities do not include extra-curriculum activities, such as
                                club activities ...
                            </p>
                            <p>
                                <b>Chú thích</b>: Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa,
                                ví dụ như hoạt động câu lạc bộ ...
                            </p>
                            <div>
                                <p>
                                    Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br />
                                    Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br />
                                    Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br />
                                    Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br/>
                                    Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br/>
                                    Little UK (LUK) thuộc tầng 5 tòa nhà Delta
                                </p>
                            </div>
                                                        </div>

                            <table class="timetable">
                                <thead class="date">
                                    
                                        <th  rowspan="2">
                                            <span><strong>Year</strong></span>
                                            <select>
                                                <option value="2019">2019</option>
                                                <option value="2020">2020</option>
                                                <option value="2021">2021</option>
                                                <option selected="selected" value="2022">2022</option>
                                                <option value="2023">2023</option>

                                            </select>
                                            <br/>
                                            Week
                                            <select>
                                                <option value="1">03/01 To 09/01</option>
                                                <option value="2">10/01 To 16/01</option>
                                                <option value="3">17/01 To 23/01</option>
                                                <option value="4">24/01 To 30/01</option>
                                                <option value="5">31/01 To 06/02</option>
                                                <option value="6">07/02 To 13/02</option>
                                                <option value="7">14/02 To 20/02</option>
                                                <option value="8">21/02 To 27/02</option>
                                                <option value="9">28/02 To 06/03</option>
                                                <option value="10">07/03 To 13/03</option>
                                                <option value="11">14/03 To 20/03</option>
                                                <option value="12">21/03 To 27/03</option>
                                                <option value="13">28/03 To 03/04</option>
                                                <option value="14">04/04 To 10/04</option>
                                                <option value="15">11/04 To 17/04</option>
                                                <option value="16">18/04 To 24/04</option>
                                                <option value="17">25/04 To 01/05</option>
                                                <option value="18">02/05 To 08/05</option>
                                                <option value="19">09/05 To 15/05</option>
                                                <option value="20">16/05 To 22/05</option>
                                                <option value="21">23/05 To 29/05</option>
                                                <option value="22">30/05 To 05/06</option>
                                                <option value="23">06/06 To 12/06</option>
                                                <option value="24">13/06 To 19/06</option>
                                                <option value="25">20/06 To 26/06</option>
                                                <option value="26">27/06 To 03/07</option>
                                                <option value="27">04/07 To 10/07</option>
                                                <option value="28">11/07 To 17/07</option>
                                                <option value="29">18/07 To 24/07</option>
                                                <option value="30">25/07 To 31/07</option>
                                                <option value="31">01/08 To 07/08</option>
                                                <option value="32">08/08 To 14/08</option>
                                                <option value="33">15/08 To 21/08</option>
                                                <option value="34">22/08 To 28/08</option>
                                                <option value="35">29/08 To 04/09</option>
                                                <option value="36">05/09 To 11/09</option>
                                                <option value="37">12/09 To 18/09</option>
                                                <option value="38">19/09 To 25/09</option>
                                                <option value="39">26/09 To 02/10</option>
                                                <option value="40">03/10 To 09/10</option>
                                                <option selected="selected" value="41">10/10 To 16/10</option>
                                                <option value="42">17/10 To 23/10</option>
                                                <option value="43">24/10 To 30/10</option>
                                                <option value="44">31/10 To 06/11</option>
                                                <option value="45">07/11 To 13/11</option>
                                                <option value="46">14/11 To 20/11</option>
                                                <option value="47">21/11 To 27/11</option>
                                                <option value="48">28/11 To 04/12</option>
                                                <option value="49">05/12 To 11/12</option>
                                                <option value="50">12/12 To 18/12</option>
                                                <option value="51">19/12 To 25/12</option>
                                                <option value="52">26/12 To 01/01</option>

                                            </select>    
                                        </th>
                                    <th>MON</th>
                                    <th>TUE</th>
                                    <th>WED</th>
                                    <th>THU</th>
                                    <th>FRI</th>
                                    <th>SAT</th>
                                    <th>SUN</th>
                                <tr>
                                    <th>10/10</th>
                                    <th>11/10</th>
                                    <th>12/10</th>
                                    <th>13/10</th>
                                    <th>14/10</th>
                                    <th>15/10</th>
                                    <th>16/10</th>
                                </tr>
                                </thead>
                                <tbody>
                                <div>
                                    <tr>
                                    <td>Slot 0 </td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr><tr>
                                        <td>Slot 1 </td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr><tr>
                                        <td>Slot 2 </td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr><tr>
                                        <td>Slot 3 </td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr><tr>
                                        <td>Slot 4 </td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr><tr>
                                        <td>Slot 5 </td>
                                        <td><p><a href="lecturer">PRJ301</a> <a id="materials" href='https://bom.so/c4uYVb' target='_blank'>View Materials</a><br/> at DE-C203 <a > <br/>(<font color=Green>attended</font>)<br/><span id="time">(14:30-16:00)</span><br/></p></td>
                                                        <td>-</td>
                                      <td><p><a href="lecturer">SE1645</a><br/> at DE-C203 - <a id="meet" href='' target='_blank'>Meet URL</a> <br/>(<font color=Green>attended</font>)<br/><span id="time">(14:30-16:00)</span><br/></p></td>

                                        <td><p><a id="sub"  href="lecturer">PRJ301</a><a id="materials" href='https://bom.so/c4uYVb' target='_blank'>View Materials</a><br/> at DE-C203 <a > <br/>(<font color=Green>attended</font>)<br/><span id="time">(14:30-16:00)</span><br/></p></td>
                                                                        <td>-</td>
                                        <td><p><a id="sub" href="lecturer">PRJ301</a><a id="materials" href='https://bom.so/c4uYVb' target='_blank'>View Materials</a><br/> at DE-C203 - <a id="meet" href='https://meet.google.com/jpn-yopf-hpq' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span id="time">(14:30-16:00)</span><br/></p></td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr><tr>
                                    <td>Slot 6 </td>
                                        <td><p><a href='lecturer'>PRJ301</a><a id="materials" href='https://bom.so/c4uYVb' target='_blank'>View Materials</a><br/> at DE-C203 <a > <br/>(<font color=Green>attended</font>)<br/><span id="time">(16:10-17:40)</span><br/></p></td>
                                        <td><p><a id="sub" href="lecturer">JPD123- <a id="materials" href='https://bom.so/c4uYVb' target='_blank'>View Materials</a><br/> at DE-C301 <a > <br/>(<font color=Green>attended</font>)<br/><span id="time">(16:10-17:40)</span><br/></p></td>
                                        <td><p><a id="sub" href="lecture">MAS291- <a id="materials" href='https://bom.so/c4uYVb' target='_blank'>View Materials</a><br/> at DE-C203 <a > <br/>(<font color=Green>attended</font>)<br/><span id="time">(16:10-17:40)</span><br/></p></td>
                                        <td>-</td>
                                        <td><p><a id="sub" href="lecturer">MAS291- <a id="materials" href='https://bom.so/c4uYVb' target='_blank'>View Materials</a><br/> at DE-C203 - <a id="meet" href='https://meet.google.com/jpn-yopf-hpq' target='_blank'>Meet URL</a><a > <br/>(<font color=red>Not yet</font>)<br/><span id="time">(16:10-17:40)</span><br/></p></td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr><tr>
                                    <td>Slot 7 </td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr><tr>
                                    <td>Slot 8 </td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </tr>
                                  </div>
                               </tbody>
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