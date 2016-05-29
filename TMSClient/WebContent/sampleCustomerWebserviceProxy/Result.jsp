<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleCustomerWebserviceProxyid" scope="session" class="webservice_layer.CustomerWebserviceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleCustomerWebserviceProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleCustomerWebserviceProxyid.getEndpoint();
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
        sampleCustomerWebserviceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webservice_layer.CustomerWebservice getCustomerWebservice10mtemp = sampleCustomerWebserviceProxyid.getCustomerWebservice();
if(getCustomerWebservice10mtemp == null){
%>
<%=getCustomerWebservice10mtemp %>
<%
}else{
        if(getCustomerWebservice10mtemp!= null){
        String tempreturnp11 = getCustomerWebservice10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String telefone_2id=  request.getParameter("telefone18");
            java.lang.String telefone_2idTemp = null;
        if(!telefone_2id.equals("")){
         telefone_2idTemp  = telefone_2id;
        }
        String cvr_3id=  request.getParameter("cvr20");
        int cvr_3idTemp  = Integer.parseInt(cvr_3id);
        String address_4id=  request.getParameter("address22");
            java.lang.String address_4idTemp = null;
        if(!address_4id.equals("")){
         address_4idTemp  = address_4id;
        }
        String lastName_5id=  request.getParameter("lastName24");
            java.lang.String lastName_5idTemp = null;
        if(!lastName_5id.equals("")){
         lastName_5idTemp  = lastName_5id;
        }
        String firstName_6id=  request.getParameter("firstName26");
            java.lang.String firstName_6idTemp = null;
        if(!firstName_6id.equals("")){
         firstName_6idTemp  = firstName_6id;
        }
        String companyName_7id=  request.getParameter("companyName28");
            java.lang.String companyName_7idTemp = null;
        if(!companyName_7id.equals("")){
         companyName_7idTemp  = companyName_7id;
        }
        String id_8id=  request.getParameter("id30");
        int id_8idTemp  = Integer.parseInt(id_8id);
        %>
        <jsp:useBean id="webservice_layer1Customer_1id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_1id.setTelefone(telefone_2idTemp);
        webservice_layer1Customer_1id.setCvr(cvr_3idTemp);
        webservice_layer1Customer_1id.setAddress(address_4idTemp);
        webservice_layer1Customer_1id.setLastName(lastName_5idTemp);
        webservice_layer1Customer_1id.setFirstName(firstName_6idTemp);
        webservice_layer1Customer_1id.setCompanyName(companyName_7idTemp);
        webservice_layer1Customer_1id.setId(id_8idTemp);
        java.lang.String deleteCustomer13mtemp = sampleCustomerWebserviceProxyid.deleteCustomer(webservice_layer1Customer_1id);
if(deleteCustomer13mtemp == null){
%>
<%=deleteCustomer13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteCustomer13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 32:
        gotMethod = true;
        String telefone_10id=  request.getParameter("telefone37");
            java.lang.String telefone_10idTemp = null;
        if(!telefone_10id.equals("")){
         telefone_10idTemp  = telefone_10id;
        }
        String cvr_11id=  request.getParameter("cvr39");
        int cvr_11idTemp  = Integer.parseInt(cvr_11id);
        String address_12id=  request.getParameter("address41");
            java.lang.String address_12idTemp = null;
        if(!address_12id.equals("")){
         address_12idTemp  = address_12id;
        }
        String lastName_13id=  request.getParameter("lastName43");
            java.lang.String lastName_13idTemp = null;
        if(!lastName_13id.equals("")){
         lastName_13idTemp  = lastName_13id;
        }
        String firstName_14id=  request.getParameter("firstName45");
            java.lang.String firstName_14idTemp = null;
        if(!firstName_14id.equals("")){
         firstName_14idTemp  = firstName_14id;
        }
        String companyName_15id=  request.getParameter("companyName47");
            java.lang.String companyName_15idTemp = null;
        if(!companyName_15id.equals("")){
         companyName_15idTemp  = companyName_15id;
        }
        String id_16id=  request.getParameter("id49");
        int id_16idTemp  = Integer.parseInt(id_16id);
        %>
        <jsp:useBean id="webservice_layer1Customer_9id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_9id.setTelefone(telefone_10idTemp);
        webservice_layer1Customer_9id.setCvr(cvr_11idTemp);
        webservice_layer1Customer_9id.setAddress(address_12idTemp);
        webservice_layer1Customer_9id.setLastName(lastName_13idTemp);
        webservice_layer1Customer_9id.setFirstName(firstName_14idTemp);
        webservice_layer1Customer_9id.setCompanyName(companyName_15idTemp);
        webservice_layer1Customer_9id.setId(id_16idTemp);
        java.lang.String updateCustomer32mtemp = sampleCustomerWebserviceProxyid.updateCustomer(webservice_layer1Customer_9id);
if(updateCustomer32mtemp == null){
%>
<%=updateCustomer32mtemp %>
<%
}else{
        String tempResultreturnp33 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateCustomer32mtemp));
        %>
        <%= tempResultreturnp33 %>
        <%
}
break;
case 51:
        gotMethod = true;
        String customerNo_17id=  request.getParameter("customerNo68");
        int customerNo_17idTemp  = Integer.parseInt(customerNo_17id);
        webservice_layer.Customer findCustomer51mtemp = sampleCustomerWebserviceProxyid.findCustomer(customerNo_17idTemp);
if(findCustomer51mtemp == null){
%>
<%=findCustomer51mtemp %>
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
if(findCustomer51mtemp != null){
java.lang.String typetelefone54 = findCustomer51mtemp.getTelefone();
        String tempResulttelefone54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone54));
        %>
        <%= tempResulttelefone54 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findCustomer51mtemp != null){
%>
<%=findCustomer51mtemp.getCvr()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findCustomer51mtemp != null){
java.lang.String typeaddress58 = findCustomer51mtemp.getAddress();
        String tempResultaddress58 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress58));
        %>
        <%= tempResultaddress58 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findCustomer51mtemp != null){
java.lang.String typelastName60 = findCustomer51mtemp.getLastName();
        String tempResultlastName60 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName60));
        %>
        <%= tempResultlastName60 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findCustomer51mtemp != null){
java.lang.String typefirstName62 = findCustomer51mtemp.getFirstName();
        String tempResultfirstName62 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName62));
        %>
        <%= tempResultfirstName62 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findCustomer51mtemp != null){
java.lang.String typecompanyName64 = findCustomer51mtemp.getCompanyName();
        String tempResultcompanyName64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName64));
        %>
        <%= tempResultcompanyName64 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findCustomer51mtemp != null){
%>
<%=findCustomer51mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 70:
        gotMethod = true;
        String telefone_19id=  request.getParameter("telefone75");
            java.lang.String telefone_19idTemp = null;
        if(!telefone_19id.equals("")){
         telefone_19idTemp  = telefone_19id;
        }
        String cvr_20id=  request.getParameter("cvr77");
        int cvr_20idTemp  = Integer.parseInt(cvr_20id);
        String address_21id=  request.getParameter("address79");
            java.lang.String address_21idTemp = null;
        if(!address_21id.equals("")){
         address_21idTemp  = address_21id;
        }
        String lastName_22id=  request.getParameter("lastName81");
            java.lang.String lastName_22idTemp = null;
        if(!lastName_22id.equals("")){
         lastName_22idTemp  = lastName_22id;
        }
        String firstName_23id=  request.getParameter("firstName83");
            java.lang.String firstName_23idTemp = null;
        if(!firstName_23id.equals("")){
         firstName_23idTemp  = firstName_23id;
        }
        String companyName_24id=  request.getParameter("companyName85");
            java.lang.String companyName_24idTemp = null;
        if(!companyName_24id.equals("")){
         companyName_24idTemp  = companyName_24id;
        }
        String id_25id=  request.getParameter("id87");
        int id_25idTemp  = Integer.parseInt(id_25id);
        %>
        <jsp:useBean id="webservice_layer1Customer_18id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_18id.setTelefone(telefone_19idTemp);
        webservice_layer1Customer_18id.setCvr(cvr_20idTemp);
        webservice_layer1Customer_18id.setAddress(address_21idTemp);
        webservice_layer1Customer_18id.setLastName(lastName_22idTemp);
        webservice_layer1Customer_18id.setFirstName(firstName_23idTemp);
        webservice_layer1Customer_18id.setCompanyName(companyName_24idTemp);
        webservice_layer1Customer_18id.setId(id_25idTemp);
        java.lang.String createCustomer70mtemp = sampleCustomerWebserviceProxyid.createCustomer(webservice_layer1Customer_18id);
if(createCustomer70mtemp == null){
%>
<%=createCustomer70mtemp %>
<%
}else{
        String tempResultreturnp71 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createCustomer70mtemp));
        %>
        <%= tempResultreturnp71 %>
        <%
}
break;
case 89:
        gotMethod = true;
        webservice_layer.Customer[] findCustomerArray89mtemp = sampleCustomerWebserviceProxyid.findCustomerArray();
if(findCustomerArray89mtemp == null){
%>
<%=findCustomerArray89mtemp %>
<%
}else{
        String tempreturnp90 = null;
        if(findCustomerArray89mtemp != null){
        java.util.List listreturnp90= java.util.Arrays.asList(findCustomerArray89mtemp);
        tempreturnp90 = listreturnp90.toString();
        }
        %>
        <%=tempreturnp90%>
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