<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleEmployeeWebserviceProxyid" scope="session" class="webservice_layer.EmployeeWebserviceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleEmployeeWebserviceProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleEmployeeWebserviceProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleEmployeeWebserviceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webservice_layer.EmployeeWebservice getEmployeeWebservice10mtemp = sampleEmployeeWebserviceProxyid.getEmployeeWebservice();
if(getEmployeeWebservice10mtemp == null){
%>
<%=getEmployeeWebservice10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String id_1id=  request.getParameter("id32");
        int id_1idTemp  = Integer.parseInt(id_1id);
        webservice_layer.Employee findEmployee15mtemp = sampleEmployeeWebserviceProxyid.findEmployee(id_1idTemp);
if(findEmployee15mtemp == null){
%>
<%=findEmployee15mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">telefone:</TD>
<TD>
<%
if(findEmployee15mtemp != null){
java.lang.String typetelefone18 = findEmployee15mtemp.getTelefone();
        String tempResulttelefone18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone18));
        %>
        <%= tempResulttelefone18 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findEmployee15mtemp != null){
java.lang.String typeaddress20 = findEmployee15mtemp.getAddress();
        String tempResultaddress20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress20));
        %>
        <%= tempResultaddress20 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findEmployee15mtemp != null){
java.lang.String typelastName22 = findEmployee15mtemp.getLastName();
        String tempResultlastName22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName22));
        %>
        <%= tempResultlastName22 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(findEmployee15mtemp != null){
java.lang.String typeemail24 = findEmployee15mtemp.getEmail();
        String tempResultemail24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail24));
        %>
        <%= tempResultemail24 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">birthdate:</TD>
<TD>
<%
if(findEmployee15mtemp != null){
java.lang.String typebirthdate26 = findEmployee15mtemp.getBirthdate();
        String tempResultbirthdate26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebirthdate26));
        %>
        <%= tempResultbirthdate26 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findEmployee15mtemp != null){
java.lang.String typefirstName28 = findEmployee15mtemp.getFirstName();
        String tempResultfirstName28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName28));
        %>
        <%= tempResultfirstName28 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findEmployee15mtemp != null){
%>
<%=findEmployee15mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 34:
        gotMethod = true;
        String telefone_3id=  request.getParameter("telefone39");
            java.lang.String telefone_3idTemp = null;
        if(!telefone_3id.equals("")){
         telefone_3idTemp  = telefone_3id;
        }
        String address_4id=  request.getParameter("address41");
            java.lang.String address_4idTemp = null;
        if(!address_4id.equals("")){
         address_4idTemp  = address_4id;
        }
        String lastName_5id=  request.getParameter("lastName43");
            java.lang.String lastName_5idTemp = null;
        if(!lastName_5id.equals("")){
         lastName_5idTemp  = lastName_5id;
        }
        String email_6id=  request.getParameter("email45");
            java.lang.String email_6idTemp = null;
        if(!email_6id.equals("")){
         email_6idTemp  = email_6id;
        }
        String birthdate_7id=  request.getParameter("birthdate47");
            java.lang.String birthdate_7idTemp = null;
        if(!birthdate_7id.equals("")){
         birthdate_7idTemp  = birthdate_7id;
        }
        String firstName_8id=  request.getParameter("firstName49");
            java.lang.String firstName_8idTemp = null;
        if(!firstName_8id.equals("")){
         firstName_8idTemp  = firstName_8id;
        }
        String id_9id=  request.getParameter("id51");
        int id_9idTemp  = Integer.parseInt(id_9id);
        %>
        <jsp:useBean id="webservice_layer1Employee_2id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_2id.setTelefone(telefone_3idTemp);
        webservice_layer1Employee_2id.setAddress(address_4idTemp);
        webservice_layer1Employee_2id.setLastName(lastName_5idTemp);
        webservice_layer1Employee_2id.setEmail(email_6idTemp);
        webservice_layer1Employee_2id.setBirthdate(birthdate_7idTemp);
        webservice_layer1Employee_2id.setFirstName(firstName_8idTemp);
        webservice_layer1Employee_2id.setId(id_9idTemp);
        java.lang.String deleteEmployee34mtemp = sampleEmployeeWebserviceProxyid.deleteEmployee(webservice_layer1Employee_2id);
if(deleteEmployee34mtemp == null){
%>
<%=deleteEmployee34mtemp %>
<%
}else{
        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteEmployee34mtemp));
        %>
        <%= tempResultreturnp35 %>
        <%
}
break;
case 53:
        gotMethod = true;
        String telefone_11id=  request.getParameter("telefone58");
            java.lang.String telefone_11idTemp = null;
        if(!telefone_11id.equals("")){
         telefone_11idTemp  = telefone_11id;
        }
        String address_12id=  request.getParameter("address60");
            java.lang.String address_12idTemp = null;
        if(!address_12id.equals("")){
         address_12idTemp  = address_12id;
        }
        String lastName_13id=  request.getParameter("lastName62");
            java.lang.String lastName_13idTemp = null;
        if(!lastName_13id.equals("")){
         lastName_13idTemp  = lastName_13id;
        }
        String email_14id=  request.getParameter("email64");
            java.lang.String email_14idTemp = null;
        if(!email_14id.equals("")){
         email_14idTemp  = email_14id;
        }
        String birthdate_15id=  request.getParameter("birthdate66");
            java.lang.String birthdate_15idTemp = null;
        if(!birthdate_15id.equals("")){
         birthdate_15idTemp  = birthdate_15id;
        }
        String firstName_16id=  request.getParameter("firstName68");
            java.lang.String firstName_16idTemp = null;
        if(!firstName_16id.equals("")){
         firstName_16idTemp  = firstName_16id;
        }
        String id_17id=  request.getParameter("id70");
        int id_17idTemp  = Integer.parseInt(id_17id);
        %>
        <jsp:useBean id="webservice_layer1Employee_10id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_10id.setTelefone(telefone_11idTemp);
        webservice_layer1Employee_10id.setAddress(address_12idTemp);
        webservice_layer1Employee_10id.setLastName(lastName_13idTemp);
        webservice_layer1Employee_10id.setEmail(email_14idTemp);
        webservice_layer1Employee_10id.setBirthdate(birthdate_15idTemp);
        webservice_layer1Employee_10id.setFirstName(firstName_16idTemp);
        webservice_layer1Employee_10id.setId(id_17idTemp);
        java.lang.String updateEmployee53mtemp = sampleEmployeeWebserviceProxyid.updateEmployee(webservice_layer1Employee_10id);
if(updateEmployee53mtemp == null){
%>
<%=updateEmployee53mtemp %>
<%
}else{
        String tempResultreturnp54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEmployee53mtemp));
        %>
        <%= tempResultreturnp54 %>
        <%
}
break;
case 72:
        gotMethod = true;
        String telefone_19id=  request.getParameter("telefone77");
            java.lang.String telefone_19idTemp = null;
        if(!telefone_19id.equals("")){
         telefone_19idTemp  = telefone_19id;
        }
        String address_20id=  request.getParameter("address79");
            java.lang.String address_20idTemp = null;
        if(!address_20id.equals("")){
         address_20idTemp  = address_20id;
        }
        String lastName_21id=  request.getParameter("lastName81");
            java.lang.String lastName_21idTemp = null;
        if(!lastName_21id.equals("")){
         lastName_21idTemp  = lastName_21id;
        }
        String email_22id=  request.getParameter("email83");
            java.lang.String email_22idTemp = null;
        if(!email_22id.equals("")){
         email_22idTemp  = email_22id;
        }
        String birthdate_23id=  request.getParameter("birthdate85");
            java.lang.String birthdate_23idTemp = null;
        if(!birthdate_23id.equals("")){
         birthdate_23idTemp  = birthdate_23id;
        }
        String firstName_24id=  request.getParameter("firstName87");
            java.lang.String firstName_24idTemp = null;
        if(!firstName_24id.equals("")){
         firstName_24idTemp  = firstName_24id;
        }
        String id_25id=  request.getParameter("id89");
        int id_25idTemp  = Integer.parseInt(id_25id);
        %>
        <jsp:useBean id="webservice_layer1Employee_18id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_18id.setTelefone(telefone_19idTemp);
        webservice_layer1Employee_18id.setAddress(address_20idTemp);
        webservice_layer1Employee_18id.setLastName(lastName_21idTemp);
        webservice_layer1Employee_18id.setEmail(email_22idTemp);
        webservice_layer1Employee_18id.setBirthdate(birthdate_23idTemp);
        webservice_layer1Employee_18id.setFirstName(firstName_24idTemp);
        webservice_layer1Employee_18id.setId(id_25idTemp);
        java.lang.String createEmployee72mtemp = sampleEmployeeWebserviceProxyid.createEmployee(webservice_layer1Employee_18id);
if(createEmployee72mtemp == null){
%>
<%=createEmployee72mtemp %>
<%
}else{
        String tempResultreturnp73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createEmployee72mtemp));
        %>
        <%= tempResultreturnp73 %>
        <%
}
break;
case 91:
        gotMethod = true;
        webservice_layer.Employee[] getAllEmployees91mtemp = sampleEmployeeWebserviceProxyid.getAllEmployees();
if(getAllEmployees91mtemp == null){
%>
<%=getAllEmployees91mtemp %>
<%
}else{
        String tempreturnp92 = null;
        if(getAllEmployees91mtemp != null){
        java.util.List listreturnp92= java.util.Arrays.asList(getAllEmployees91mtemp);
        tempreturnp92 = listreturnp92.toString();
        }
        %>
        <%=tempreturnp92%>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>