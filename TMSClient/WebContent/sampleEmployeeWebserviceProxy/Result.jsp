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
        webservice_layer.Employee[] getAllEmployees15mtemp = sampleEmployeeWebserviceProxyid.getAllEmployees();
if(getAllEmployees15mtemp == null){
%>
<%=getAllEmployees15mtemp %>
<%
}else{
        String tempreturnp16 = null;
        if(getAllEmployees15mtemp != null){
        java.util.List listreturnp16= java.util.Arrays.asList(getAllEmployees15mtemp);
        tempreturnp16 = listreturnp16.toString();
        }
        %>
        <%=tempreturnp16%>
        <%
}
break;
case 18:
        gotMethod = true;
        String telefone_2id=  request.getParameter("telefone23");
            java.lang.String telefone_2idTemp = null;
        if(!telefone_2id.equals("")){
         telefone_2idTemp  = telefone_2id;
        }
        String address_3id=  request.getParameter("address25");
            java.lang.String address_3idTemp = null;
        if(!address_3id.equals("")){
         address_3idTemp  = address_3id;
        }
        String lastName_4id=  request.getParameter("lastName27");
            java.lang.String lastName_4idTemp = null;
        if(!lastName_4id.equals("")){
         lastName_4idTemp  = lastName_4id;
        }
        String email_5id=  request.getParameter("email29");
            java.lang.String email_5idTemp = null;
        if(!email_5id.equals("")){
         email_5idTemp  = email_5id;
        }
        String birthdate_6id=  request.getParameter("birthdate31");
            java.lang.String birthdate_6idTemp = null;
        if(!birthdate_6id.equals("")){
         birthdate_6idTemp  = birthdate_6id;
        }
        String firstName_7id=  request.getParameter("firstName33");
            java.lang.String firstName_7idTemp = null;
        if(!firstName_7id.equals("")){
         firstName_7idTemp  = firstName_7id;
        }
        String id_8id=  request.getParameter("id35");
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
        java.lang.String deleteEmployee18mtemp = sampleEmployeeWebserviceProxyid.deleteEmployee(webservice_layer1Employee_1id);
if(deleteEmployee18mtemp == null){
%>
<%=deleteEmployee18mtemp %>
<%
}else{
        String tempResultreturnp19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteEmployee18mtemp));
        %>
        <%= tempResultreturnp19 %>
        <%
}
break;
case 37:
        gotMethod = true;
        String telefone_10id=  request.getParameter("telefone42");
            java.lang.String telefone_10idTemp = null;
        if(!telefone_10id.equals("")){
         telefone_10idTemp  = telefone_10id;
        }
        String address_11id=  request.getParameter("address44");
            java.lang.String address_11idTemp = null;
        if(!address_11id.equals("")){
         address_11idTemp  = address_11id;
        }
        String lastName_12id=  request.getParameter("lastName46");
            java.lang.String lastName_12idTemp = null;
        if(!lastName_12id.equals("")){
         lastName_12idTemp  = lastName_12id;
        }
        String email_13id=  request.getParameter("email48");
            java.lang.String email_13idTemp = null;
        if(!email_13id.equals("")){
         email_13idTemp  = email_13id;
        }
        String birthdate_14id=  request.getParameter("birthdate50");
            java.lang.String birthdate_14idTemp = null;
        if(!birthdate_14id.equals("")){
         birthdate_14idTemp  = birthdate_14id;
        }
        String firstName_15id=  request.getParameter("firstName52");
            java.lang.String firstName_15idTemp = null;
        if(!firstName_15id.equals("")){
         firstName_15idTemp  = firstName_15id;
        }
        String id_16id=  request.getParameter("id54");
        int id_16idTemp  = Integer.parseInt(id_16id);
        %>
        <jsp:useBean id="webservice_layer1Employee_9id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_9id.setTelefone(telefone_10idTemp);
        webservice_layer1Employee_9id.setAddress(address_11idTemp);
        webservice_layer1Employee_9id.setLastName(lastName_12idTemp);
        webservice_layer1Employee_9id.setEmail(email_13idTemp);
        webservice_layer1Employee_9id.setBirthdate(birthdate_14idTemp);
        webservice_layer1Employee_9id.setFirstName(firstName_15idTemp);
        webservice_layer1Employee_9id.setId(id_16idTemp);
        java.lang.String updateEmployee37mtemp = sampleEmployeeWebserviceProxyid.updateEmployee(webservice_layer1Employee_9id);
if(updateEmployee37mtemp == null){
%>
<%=updateEmployee37mtemp %>
<%
}else{
        String tempResultreturnp38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEmployee37mtemp));
        %>
        <%= tempResultreturnp38 %>
        <%
}
break;
case 56:
        gotMethod = true;
        String telefone_18id=  request.getParameter("telefone61");
            java.lang.String telefone_18idTemp = null;
        if(!telefone_18id.equals("")){
         telefone_18idTemp  = telefone_18id;
        }
        String address_19id=  request.getParameter("address63");
            java.lang.String address_19idTemp = null;
        if(!address_19id.equals("")){
         address_19idTemp  = address_19id;
        }
        String lastName_20id=  request.getParameter("lastName65");
            java.lang.String lastName_20idTemp = null;
        if(!lastName_20id.equals("")){
         lastName_20idTemp  = lastName_20id;
        }
        String email_21id=  request.getParameter("email67");
            java.lang.String email_21idTemp = null;
        if(!email_21id.equals("")){
         email_21idTemp  = email_21id;
        }
        String birthdate_22id=  request.getParameter("birthdate69");
            java.lang.String birthdate_22idTemp = null;
        if(!birthdate_22id.equals("")){
         birthdate_22idTemp  = birthdate_22id;
        }
        String firstName_23id=  request.getParameter("firstName71");
            java.lang.String firstName_23idTemp = null;
        if(!firstName_23id.equals("")){
         firstName_23idTemp  = firstName_23id;
        }
        String id_24id=  request.getParameter("id73");
        int id_24idTemp  = Integer.parseInt(id_24id);
        %>
        <jsp:useBean id="webservice_layer1Employee_17id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_17id.setTelefone(telefone_18idTemp);
        webservice_layer1Employee_17id.setAddress(address_19idTemp);
        webservice_layer1Employee_17id.setLastName(lastName_20idTemp);
        webservice_layer1Employee_17id.setEmail(email_21idTemp);
        webservice_layer1Employee_17id.setBirthdate(birthdate_22idTemp);
        webservice_layer1Employee_17id.setFirstName(firstName_23idTemp);
        webservice_layer1Employee_17id.setId(id_24idTemp);
        java.lang.String createEmployee56mtemp = sampleEmployeeWebserviceProxyid.createEmployee(webservice_layer1Employee_17id);
if(createEmployee56mtemp == null){
%>
<%=createEmployee56mtemp %>
<%
}else{
        String tempResultreturnp57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createEmployee56mtemp));
        %>
        <%= tempResultreturnp57 %>
        <%
}
break;
case 75:
        gotMethod = true;
        String id_25id=  request.getParameter("id92");
        int id_25idTemp  = Integer.parseInt(id_25id);
        webservice_layer.Employee findEmployee75mtemp = sampleEmployeeWebserviceProxyid.findEmployee(id_25idTemp);
if(findEmployee75mtemp == null){
%>
<%=findEmployee75mtemp %>
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
if(findEmployee75mtemp != null){
java.lang.String typetelefone78 = findEmployee75mtemp.getTelefone();
        String tempResulttelefone78 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone78));
        %>
        <%= tempResulttelefone78 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findEmployee75mtemp != null){
java.lang.String typeaddress80 = findEmployee75mtemp.getAddress();
        String tempResultaddress80 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress80));
        %>
        <%= tempResultaddress80 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findEmployee75mtemp != null){
java.lang.String typelastName82 = findEmployee75mtemp.getLastName();
        String tempResultlastName82 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName82));
        %>
        <%= tempResultlastName82 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(findEmployee75mtemp != null){
java.lang.String typeemail84 = findEmployee75mtemp.getEmail();
        String tempResultemail84 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail84));
        %>
        <%= tempResultemail84 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">birthdate:</TD>
<TD>
<%
if(findEmployee75mtemp != null){
java.lang.String typebirthdate86 = findEmployee75mtemp.getBirthdate();
        String tempResultbirthdate86 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebirthdate86));
        %>
        <%= tempResultbirthdate86 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findEmployee75mtemp != null){
java.lang.String typefirstName88 = findEmployee75mtemp.getFirstName();
        String tempResultfirstName88 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName88));
        %>
        <%= tempResultfirstName88 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findEmployee75mtemp != null){
%>
<%=findEmployee75mtemp.getId()
%><%}%>
</TD>
</TABLE>
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