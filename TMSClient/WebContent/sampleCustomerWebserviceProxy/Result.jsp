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
        java.lang.String createCustomer13mtemp = sampleCustomerWebserviceProxyid.createCustomer(webservice_layer1Customer_1id);
if(createCustomer13mtemp == null){
%>
<%=createCustomer13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createCustomer13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 32:
        gotMethod = true;
        String customerNo_9id=  request.getParameter("customerNo49");
        int customerNo_9idTemp  = Integer.parseInt(customerNo_9id);
        webservice_layer.Customer findCustomer32mtemp = sampleCustomerWebserviceProxyid.findCustomer(customerNo_9idTemp);
if(findCustomer32mtemp == null){
%>
<%=findCustomer32mtemp %>
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
if(findCustomer32mtemp != null){
java.lang.String typetelefone35 = findCustomer32mtemp.getTelefone();
        String tempResulttelefone35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone35));
        %>
        <%= tempResulttelefone35 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findCustomer32mtemp != null){
%>
<%=findCustomer32mtemp.getCvr()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findCustomer32mtemp != null){
java.lang.String typeaddress39 = findCustomer32mtemp.getAddress();
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
if(findCustomer32mtemp != null){
java.lang.String typelastName41 = findCustomer32mtemp.getLastName();
        String tempResultlastName41 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName41));
        %>
        <%= tempResultlastName41 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findCustomer32mtemp != null){
java.lang.String typefirstName43 = findCustomer32mtemp.getFirstName();
        String tempResultfirstName43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName43));
        %>
        <%= tempResultfirstName43 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findCustomer32mtemp != null){
java.lang.String typecompanyName45 = findCustomer32mtemp.getCompanyName();
        String tempResultcompanyName45 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName45));
        %>
        <%= tempResultcompanyName45 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findCustomer32mtemp != null){
%>
<%=findCustomer32mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 51:
        gotMethod = true;
        String telefone_11id=  request.getParameter("telefone56");
            java.lang.String telefone_11idTemp = null;
        if(!telefone_11id.equals("")){
         telefone_11idTemp  = telefone_11id;
        }
        String cvr_12id=  request.getParameter("cvr58");
        int cvr_12idTemp  = Integer.parseInt(cvr_12id);
        String address_13id=  request.getParameter("address60");
            java.lang.String address_13idTemp = null;
        if(!address_13id.equals("")){
         address_13idTemp  = address_13id;
        }
        String lastName_14id=  request.getParameter("lastName62");
            java.lang.String lastName_14idTemp = null;
        if(!lastName_14id.equals("")){
         lastName_14idTemp  = lastName_14id;
        }
        String firstName_15id=  request.getParameter("firstName64");
            java.lang.String firstName_15idTemp = null;
        if(!firstName_15id.equals("")){
         firstName_15idTemp  = firstName_15id;
        }
        String companyName_16id=  request.getParameter("companyName66");
            java.lang.String companyName_16idTemp = null;
        if(!companyName_16id.equals("")){
         companyName_16idTemp  = companyName_16id;
        }
        String id_17id=  request.getParameter("id68");
        int id_17idTemp  = Integer.parseInt(id_17id);
        %>
        <jsp:useBean id="webservice_layer1Customer_10id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_10id.setTelefone(telefone_11idTemp);
        webservice_layer1Customer_10id.setCvr(cvr_12idTemp);
        webservice_layer1Customer_10id.setAddress(address_13idTemp);
        webservice_layer1Customer_10id.setLastName(lastName_14idTemp);
        webservice_layer1Customer_10id.setFirstName(firstName_15idTemp);
        webservice_layer1Customer_10id.setCompanyName(companyName_16idTemp);
        webservice_layer1Customer_10id.setId(id_17idTemp);
        java.lang.String updateCustomer51mtemp = sampleCustomerWebserviceProxyid.updateCustomer(webservice_layer1Customer_10id);
if(updateCustomer51mtemp == null){
%>
<%=updateCustomer51mtemp %>
<%
}else{
        String tempResultreturnp52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateCustomer51mtemp));
        %>
        <%= tempResultreturnp52 %>
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
        java.lang.String deleteCustomer70mtemp = sampleCustomerWebserviceProxyid.deleteCustomer(webservice_layer1Customer_18id);
if(deleteCustomer70mtemp == null){
%>
<%=deleteCustomer70mtemp %>
<%
}else{
        String tempResultreturnp71 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteCustomer70mtemp));
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