<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD>
<TITLE>Inputs</TITLE>
</HEAD>
<BODY>
<H1>Inputs</H1>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

boolean valid = true;

if(methodID != -1) methodID = Integer.parseInt(method);
switch (methodID){ 
case 2:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 5:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">endpoint:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endpoint8" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 10:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 13:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">scheduleId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="scheduleId86" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 88:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">schedule:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeString93" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id95" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">job:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">startDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate99" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartDate99 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartDate99  = new java.util.GregorianCalendar();
java.util.Date datestartDate99 = gcExampstartDate99.getTime();
String tempResultstartDate99 = dateFormatstartDate99.format(datestartDate99);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartDate99 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address101" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">endDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate103" SIZE=20></TD>
<%
java.text.DateFormat dateFormatendDate103 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampendDate103  = new java.util.GregorianCalendar();
java.util.Date dateendDate103 = gcExampendDate103.getTime();
String tempResultendDate103 = dateFormatendDate103.format(dateendDate103);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultendDate103 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone107" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">cvr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="cvr109" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address111" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName113" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName115" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">companyName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="companyName117" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id119" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id121" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duration:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="duration123" SIZE=20></TD>
<%
java.text.DateFormat dateFormatduration123 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampduration123  = new java.util.GregorianCalendar();
java.util.Date dateduration123 = gcExampduration123.getTime();
String tempResultduration123 = dateFormatduration123.format(dateduration123);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultduration123 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDate125" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartTimeDate125 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartTimeDate125  = new java.util.GregorianCalendar();
java.util.Date datestartTimeDate125 = gcExampstartTimeDate125.getTime();
String tempResultstartTimeDate125 = dateFormatstartTimeDate125.format(datestartTimeDate125);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartTimeDate125 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">competency:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">competency:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="competency129" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id131" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDateString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDateString133" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone137" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address139" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName141" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email143" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">birthdate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="birthdate145" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName147" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id149" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">item:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">qantity:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="qantity153" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">product:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">product:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="product157" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id159" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id161" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 163:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">schedule:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeString168" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id170" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">job:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">startDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate174" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartDate174 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartDate174  = new java.util.GregorianCalendar();
java.util.Date datestartDate174 = gcExampstartDate174.getTime();
String tempResultstartDate174 = dateFormatstartDate174.format(datestartDate174);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartDate174 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address176" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">endDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate178" SIZE=20></TD>
<%
java.text.DateFormat dateFormatendDate178 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampendDate178  = new java.util.GregorianCalendar();
java.util.Date dateendDate178 = gcExampendDate178.getTime();
String tempResultendDate178 = dateFormatendDate178.format(dateendDate178);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultendDate178 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone182" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">cvr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="cvr184" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address186" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName188" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName190" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">companyName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="companyName192" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id194" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id196" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duration:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="duration198" SIZE=20></TD>
<%
java.text.DateFormat dateFormatduration198 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampduration198  = new java.util.GregorianCalendar();
java.util.Date dateduration198 = gcExampduration198.getTime();
String tempResultduration198 = dateFormatduration198.format(dateduration198);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultduration198 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDate200" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartTimeDate200 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartTimeDate200  = new java.util.GregorianCalendar();
java.util.Date datestartTimeDate200 = gcExampstartTimeDate200.getTime();
String tempResultstartTimeDate200 = dateFormatstartTimeDate200.format(datestartTimeDate200);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartTimeDate200 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">competency:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">competency:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="competency204" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id206" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDateString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDateString208" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone212" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address214" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName216" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email218" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">birthdate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="birthdate220" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName222" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id224" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">item:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">qantity:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="qantity228" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">product:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">product:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="product232" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id234" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id236" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 238:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">schedule:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeString243" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id245" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">job:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">startDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate249" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartDate249 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartDate249  = new java.util.GregorianCalendar();
java.util.Date datestartDate249 = gcExampstartDate249.getTime();
String tempResultstartDate249 = dateFormatstartDate249.format(datestartDate249);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartDate249 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address251" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">endDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate253" SIZE=20></TD>
<%
java.text.DateFormat dateFormatendDate253 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampendDate253  = new java.util.GregorianCalendar();
java.util.Date dateendDate253 = gcExampendDate253.getTime();
String tempResultendDate253 = dateFormatendDate253.format(dateendDate253);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultendDate253 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone257" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">cvr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="cvr259" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address261" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName263" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName265" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">companyName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="companyName267" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id269" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id271" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duration:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="duration273" SIZE=20></TD>
<%
java.text.DateFormat dateFormatduration273 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampduration273  = new java.util.GregorianCalendar();
java.util.Date dateduration273 = gcExampduration273.getTime();
String tempResultduration273 = dateFormatduration273.format(dateduration273);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultduration273 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDate275" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartTimeDate275 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartTimeDate275  = new java.util.GregorianCalendar();
java.util.Date datestartTimeDate275 = gcExampstartTimeDate275.getTime();
String tempResultstartTimeDate275 = dateFormatstartTimeDate275.format(datestartTimeDate275);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartTimeDate275 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">competency:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">competency:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="competency279" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id281" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDateString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDateString283" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone287" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address289" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName291" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email293" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">birthdate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="birthdate295" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName297" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id299" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">item:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">qantity:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="qantity303" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">product:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">product:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="product307" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id309" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id311" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 313:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">employeeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="employeeId316" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">startTimeDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDate318" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartTimeDate318 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartTimeDate318  = new java.util.GregorianCalendar();
java.util.Date datestartTimeDate318 = gcExampstartTimeDate318.getTime();
String tempResultstartTimeDate318 = dateFormatstartTimeDate318.format(datestartTimeDate318);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartTimeDate318 %> </TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 320:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111111:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">URLString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="url1111111111" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111112:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
}
if (valid) {
%>
Select a method to test.
<%
}
%>

</BODY>
</HTML>
