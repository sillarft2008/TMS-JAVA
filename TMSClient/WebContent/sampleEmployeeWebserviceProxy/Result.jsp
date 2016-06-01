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
        String telefone_2id=  request.getParameter("telefone20");
            java.lang.String telefone_2idTemp = null;
        if(!telefone_2id.equals("")){
         telefone_2idTemp  = telefone_2id;
        }
        String address_3id=  request.getParameter("address22");
            java.lang.String address_3idTemp = null;
        if(!address_3id.equals("")){
         address_3idTemp  = address_3id;
        }
        String lastName_4id=  request.getParameter("lastName24");
            java.lang.String lastName_4idTemp = null;
        if(!lastName_4id.equals("")){
         lastName_4idTemp  = lastName_4id;
        }
        String email_5id=  request.getParameter("email26");
            java.lang.String email_5idTemp = null;
        if(!email_5id.equals("")){
         email_5idTemp  = email_5id;
        }
        String birthdate_6id=  request.getParameter("birthdate28");
            java.lang.String birthdate_6idTemp = null;
        if(!birthdate_6id.equals("")){
         birthdate_6idTemp  = birthdate_6id;
        }
        String firstName_7id=  request.getParameter("firstName30");
            java.lang.String firstName_7idTemp = null;
        if(!firstName_7id.equals("")){
         firstName_7idTemp  = firstName_7id;
        }
        String id_8id=  request.getParameter("id32");
        int id_8idTemp  = Integer.parseInt(id_8id);
        %>
        <jsp:useBean id="webservice_layer1Employee_1id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_1id.setTelefone(telefone_2idTemp);
        webservice_layer1Employee_1id.setAddress(address_3idTemp);
        webservice_layer1Employee_1id.setLastName(lastName_4idTemp);
        webservice_layer1Employee_1id.setEmail(email_5idTemp);
        webservice_layer1Employee_1id.setBirthdate(birthdate_6idTemp);
        webservice_layer1Employee_1id.setFirstName(firstName_7idTemp);
        webservice_layer1Employee_1id.setId(id_8idTemp);
        java.lang.String updateEmployee15mtemp = sampleEmployeeWebserviceProxyid.updateEmployee(webservice_layer1Employee_1id);
if(updateEmployee15mtemp == null){
%>
<%=updateEmployee15mtemp %>
<%
}else{
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEmployee15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
}
break;
case 34:
        gotMethod = true;
        String id_9id=  request.getParameter("id51");
        int id_9idTemp  = Integer.parseInt(id_9id);
        webservice_layer.Employee findEmployee34mtemp = sampleEmployeeWebserviceProxyid.findEmployee(id_9idTemp);
if(findEmployee34mtemp == null){
%>
<%=findEmployee34mtemp %>
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
if(findEmployee34mtemp != null){
java.lang.String typetelefone37 = findEmployee34mtemp.getTelefone();
        String tempResulttelefone37 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone37));
        %>
        <%= tempResulttelefone37 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findEmployee34mtemp != null){
java.lang.String typeaddress39 = findEmployee34mtemp.getAddress();
        String tempResultaddress39 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress39));
        %>
        <%= tempResultaddress39 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findEmployee34mtemp != null){
java.lang.String typelastName41 = findEmployee34mtemp.getLastName();
        String tempResultlastName41 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName41));
        %>
        <%= tempResultlastName41 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(findEmployee34mtemp != null){
java.lang.String typeemail43 = findEmployee34mtemp.getEmail();
        String tempResultemail43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail43));
        %>
        <%= tempResultemail43 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">birthdate:</TD>
<TD>
<%
if(findEmployee34mtemp != null){
java.lang.String typebirthdate45 = findEmployee34mtemp.getBirthdate();
        String tempResultbirthdate45 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebirthdate45));
        %>
        <%= tempResultbirthdate45 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findEmployee34mtemp != null){
java.lang.String typefirstName47 = findEmployee34mtemp.getFirstName();
        String tempResultfirstName47 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName47));
        %>
        <%= tempResultfirstName47 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findEmployee34mtemp != null){
%>
<%=findEmployee34mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 53:
        gotMethod = true;
        webservice_layer.Employee[] getAllEmployees53mtemp = sampleEmployeeWebserviceProxyid.getAllEmployees();
if(getAllEmployees53mtemp == null){
%>
<%=getAllEmployees53mtemp %>
<%
}else{
        String tempreturnp54 = null;
        if(getAllEmployees53mtemp != null){
        java.util.List listreturnp54= java.util.Arrays.asList(getAllEmployees53mtemp);
        tempreturnp54 = listreturnp54.toString();
        }
        %>
        <%=tempreturnp54%>
        <%
}
break;
case 56:
        gotMethod = true;
        String telefone_11id=  request.getParameter("telefone61");
            java.lang.String telefone_11idTemp = null;
        if(!telefone_11id.equals("")){
         telefone_11idTemp  = telefone_11id;
        }
        String address_12id=  request.getParameter("address63");
            java.lang.String address_12idTemp = null;
        if(!address_12id.equals("")){
         address_12idTemp  = address_12id;
        }
        String lastName_13id=  request.getParameter("lastName65");
            java.lang.String lastName_13idTemp = null;
        if(!lastName_13id.equals("")){
         lastName_13idTemp  = lastName_13id;
        }
        String email_14id=  request.getParameter("email67");
            java.lang.String email_14idTemp = null;
        if(!email_14id.equals("")){
         email_14idTemp  = email_14id;
        }
        String birthdate_15id=  request.getParameter("birthdate69");
            java.lang.String birthdate_15idTemp = null;
        if(!birthdate_15id.equals("")){
         birthdate_15idTemp  = birthdate_15id;
        }
        String firstName_16id=  request.getParameter("firstName71");
            java.lang.String firstName_16idTemp = null;
        if(!firstName_16id.equals("")){
         firstName_16idTemp  = firstName_16id;
        }
        String id_17id=  request.getParameter("id73");
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
        java.lang.String deleteEmployee56mtemp = sampleEmployeeWebserviceProxyid.deleteEmployee(webservice_layer1Employee_10id);
if(deleteEmployee56mtemp == null){
%>
<%=deleteEmployee56mtemp %>
<%
}else{
        String tempResultreturnp57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteEmployee56mtemp));
        %>
        <%= tempResultreturnp57 %>
        <%
}
break;
case 75:
        gotMethod = true;
        String telefone_19id=  request.getParameter("telefone80");
            java.lang.String telefone_19idTemp = null;
        if(!telefone_19id.equals("")){
         telefone_19idTemp  = telefone_19id;
        }
        String address_20id=  request.getParameter("address82");
            java.lang.String address_20idTemp = null;
        if(!address_20id.equals("")){
         address_20idTemp  = address_20id;
        }
        String lastName_21id=  request.getParameter("lastName84");
            java.lang.String lastName_21idTemp = null;
        if(!lastName_21id.equals("")){
         lastName_21idTemp  = lastName_21id;
        }
        String email_22id=  request.getParameter("email86");
            java.lang.String email_22idTemp = null;
        if(!email_22id.equals("")){
         email_22idTemp  = email_22id;
        }
        String birthdate_23id=  request.getParameter("birthdate88");
            java.lang.String birthdate_23idTemp = null;
        if(!birthdate_23id.equals("")){
         birthdate_23idTemp  = birthdate_23id;
        }
        String firstName_24id=  request.getParameter("firstName90");
            java.lang.String firstName_24idTemp = null;
        if(!firstName_24id.equals("")){
         firstName_24idTemp  = firstName_24id;
        }
        String id_25id=  request.getParameter("id92");
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
        java.lang.String createEmployee75mtemp = sampleEmployeeWebserviceProxyid.createEmployee(webservice_layer1Employee_18id);
if(createEmployee75mtemp == null){
%>
<%=createEmployee75mtemp %>
<%
}else{
        String tempResultreturnp76 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createEmployee75mtemp));
        %>
        <%= tempResultreturnp76 %>
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