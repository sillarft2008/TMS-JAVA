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
<TD COLSPAN="3" ALIGN="LEFT">job:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate18" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartDate18 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartDate18  = new java.util.GregorianCalendar();
java.util.Date datestartDate18 = gcExampstartDate18.getTime();
String tempResultstartDate18 = dateFormatstartDate18.format(datestartDate18);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartDate18 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address20" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate22" SIZE=20></TD>
<%
java.text.DateFormat dateFormatendDate22 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampendDate22  = new java.util.GregorianCalendar();
java.util.Date dateendDate22 = gcExampendDate22.getTime();
String tempResultendDate22 = dateFormatendDate22.format(dateendDate22);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultendDate22 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone26" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="cvr28" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address30" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName32" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName34" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="companyName36" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id38" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id40" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 42:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">job:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate47" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartDate47 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartDate47  = new java.util.GregorianCalendar();
java.util.Date datestartDate47 = gcExampstartDate47.getTime();
String tempResultstartDate47 = dateFormatstartDate47.format(datestartDate47);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartDate47 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address49" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate51" SIZE=20></TD>
<%
java.text.DateFormat dateFormatendDate51 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampendDate51  = new java.util.GregorianCalendar();
java.util.Date dateendDate51 = gcExampendDate51.getTime();
String tempResultendDate51 = dateFormatendDate51.format(dateendDate51);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultendDate51 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone55" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="cvr57" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address59" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName61" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName63" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="companyName65" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id67" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id69" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 71:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">job:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate76" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartDate76 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartDate76  = new java.util.GregorianCalendar();
java.util.Date datestartDate76 = gcExampstartDate76.getTime();
String tempResultstartDate76 = dateFormatstartDate76.format(datestartDate76);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartDate76 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address78" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate80" SIZE=20></TD>
<%
java.text.DateFormat dateFormatendDate80 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampendDate80  = new java.util.GregorianCalendar();
java.util.Date dateendDate80 = gcExampendDate80.getTime();
String tempResultendDate80 = dateFormatendDate80.format(dateendDate80);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultendDate80 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone84" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="cvr86" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address88" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName90" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName92" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="companyName94" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id96" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id98" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 100:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">jobId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="jobId127" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 129:
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
case 132:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">customerId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerId135" SIZE=20></TD>
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
