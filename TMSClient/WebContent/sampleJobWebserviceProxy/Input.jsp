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
<TD COLSPAN="1" ALIGN="LEFT">customerId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="customerId45" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 47:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">jobId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="jobId74" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 76:
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
case 79:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate84" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartDate84 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartDate84  = new java.util.GregorianCalendar();
java.util.Date datestartDate84 = gcExampstartDate84.getTime();
String tempResultstartDate84 = dateFormatstartDate84.format(datestartDate84);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartDate84 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address86" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate88" SIZE=20></TD>
<%
java.text.DateFormat dateFormatendDate88 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampendDate88  = new java.util.GregorianCalendar();
java.util.Date dateendDate88 = gcExampendDate88.getTime();
String tempResultendDate88 = dateFormatendDate88.format(dateendDate88);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultendDate88 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone92" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="cvr94" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address96" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName98" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName100" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="companyName102" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id104" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id106" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 108:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate113" SIZE=20></TD>
<%
java.text.DateFormat dateFormatstartDate113 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampstartDate113  = new java.util.GregorianCalendar();
java.util.Date datestartDate113 = gcExampstartDate113.getTime();
String tempResultstartDate113 = dateFormatstartDate113.format(datestartDate113);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultstartDate113 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address115" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate117" SIZE=20></TD>
<%
java.text.DateFormat dateFormatendDate117 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampendDate117  = new java.util.GregorianCalendar();
java.util.Date dateendDate117 = gcExampendDate117.getTime();
String tempResultendDate117 = dateFormatendDate117.format(dateendDate117);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultendDate117 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone121" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="cvr123" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address125" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName127" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName129" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="companyName131" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id133" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id135" SIZE=20></TD>
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
