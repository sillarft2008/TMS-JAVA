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
<TD COLSPAN="3" ALIGN="LEFT">schedule:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeString18" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id20" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">job:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">startDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate24" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartDate24 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartDate24  = new java.util.GregorianCalendar();
java.util.Date datestartDate24 = gcExampstartDate24.getTime();
String tempResultstartDate24 = dateFormatstartDate24.format(datestartDate24);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartDate24 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address26" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">endDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate28" SIZE=20></TD>
<%
java.text.DateFormat dateFormatendDate28 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampendDate28  = new java.util.GregorianCalendar();
java.util.Date dateendDate28 = gcExampendDate28.getTime();
String tempResultendDate28 = dateFormatendDate28.format(dateendDate28);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultendDate28 %> </TD>
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone32" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">cvr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="cvr34" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address36" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName38" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName40" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">companyName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="companyName42" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id44" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id46" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duration:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="duration48" SIZE=20></TD>
<%
java.text.DateFormat dateFormatduration48 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampduration48  = new java.util.GregorianCalendar();
java.util.Date dateduration48 = gcExampduration48.getTime();
String tempResultduration48 = dateFormatduration48.format(dateduration48);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultduration48 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDate50" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartTimeDate50 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartTimeDate50  = new java.util.GregorianCalendar();
java.util.Date datestartTimeDate50 = gcExampstartTimeDate50.getTime();
String tempResultstartTimeDate50 = dateFormatstartTimeDate50.format(datestartTimeDate50);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartTimeDate50 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">competency:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">competency:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="competency54" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id56" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDateString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDateString58" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone62" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address64" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName66" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email68" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">birthdate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="birthdate70" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName72" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id74" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">item:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">qantity:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="qantity78" SIZE=20></TD>
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="product82" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id84" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id86" SIZE=20></TD>
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
<TD COLSPAN="1" ALIGN="LEFT">scheduleId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="scheduleId311" SIZE=20></TD>
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
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 316:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">employeeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="employeeId319" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">startTimeDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startTimeDate321" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartTimeDate321 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartTimeDate321  = new java.util.GregorianCalendar();
java.util.Date datestartTimeDate321 = gcExampstartTimeDate321.getTime();
String tempResultstartTimeDate321 = dateFormatstartTimeDate321.format(datestartTimeDate321);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartTimeDate321 %> </TD>
</TR>
</TABLE>
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
