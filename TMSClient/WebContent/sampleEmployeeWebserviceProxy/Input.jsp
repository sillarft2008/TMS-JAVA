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
case 15:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone20" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address22" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName24" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email26" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">birthdate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="birthdate28" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName30" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id32" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 34:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id51" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 53:
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
case 56:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone61" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address63" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName65" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email67" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">birthdate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="birthdate69" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName71" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id73" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 75:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">telefone:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="telefone80" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="address82" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastName84" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email86" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">birthdate:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="birthdate88" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="firstName90" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id92" SIZE=20></TD>
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
