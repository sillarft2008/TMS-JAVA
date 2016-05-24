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
        String customerNo_1id=  request.getParameter("customerNo30");
        int customerNo_1idTemp  = Integer.parseInt(customerNo_1id);
        webservice_layer.Customer findCustomer13mtemp = sampleCustomerWebserviceProxyid.findCustomer(customerNo_1idTemp);
if(findCustomer13mtemp == null){
%>
<%=findCustomer13mtemp %>
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
if(findCustomer13mtemp != null){
java.lang.String typetelefone16 = findCustomer13mtemp.getTelefone();
        String tempResulttelefone16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone16));
        %>
        <%= tempResulttelefone16 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findCustomer13mtemp != null){
%>
<%=findCustomer13mtemp.getCvr()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findCustomer13mtemp != null){
java.lang.String typeaddress20 = findCustomer13mtemp.getAddress();
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
if(findCustomer13mtemp != null){
java.lang.String typelastName22 = findCustomer13mtemp.getLastName();
        String tempResultlastName22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName22));
        %>
        <%= tempResultlastName22 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findCustomer13mtemp != null){
java.lang.String typefirstName24 = findCustomer13mtemp.getFirstName();
        String tempResultfirstName24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName24));
        %>
        <%= tempResultfirstName24 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findCustomer13mtemp != null){
java.lang.String typecompanyName26 = findCustomer13mtemp.getCompanyName();
        String tempResultcompanyName26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName26));
        %>
        <%= tempResultcompanyName26 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findCustomer13mtemp != null){
%>
<%=findCustomer13mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 32:
        gotMethod = true;
        String telefone_3id=  request.getParameter("telefone37");
            java.lang.String telefone_3idTemp = null;
        if(!telefone_3id.equals("")){
         telefone_3idTemp  = telefone_3id;
        }
        String cvr_4id=  request.getParameter("cvr39");
        int cvr_4idTemp  = Integer.parseInt(cvr_4id);
        String address_5id=  request.getParameter("address41");
            java.lang.String address_5idTemp = null;
        if(!address_5id.equals("")){
         address_5idTemp  = address_5id;
        }
        String lastName_6id=  request.getParameter("lastName43");
            java.lang.String lastName_6idTemp = null;
        if(!lastName_6id.equals("")){
         lastName_6idTemp  = lastName_6id;
        }
        String firstName_7id=  request.getParameter("firstName45");
            java.lang.String firstName_7idTemp = null;
        if(!firstName_7id.equals("")){
         firstName_7idTemp  = firstName_7id;
        }
        String companyName_8id=  request.getParameter("companyName47");
            java.lang.String companyName_8idTemp = null;
        if(!companyName_8id.equals("")){
         companyName_8idTemp  = companyName_8id;
        }
        String id_9id=  request.getParameter("id49");
        int id_9idTemp  = Integer.parseInt(id_9id);
        %>
        <jsp:useBean id="webservice_layer1Customer_2id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_2id.setTelefone(telefone_3idTemp);
        webservice_layer1Customer_2id.setCvr(cvr_4idTemp);
        webservice_layer1Customer_2id.setAddress(address_5idTemp);
        webservice_layer1Customer_2id.setLastName(lastName_6idTemp);
        webservice_layer1Customer_2id.setFirstName(firstName_7idTemp);
        webservice_layer1Customer_2id.setCompanyName(companyName_8idTemp);
        webservice_layer1Customer_2id.setId(id_9idTemp);
        java.lang.String updateCustomer32mtemp = sampleCustomerWebserviceProxyid.updateCustomer(webservice_layer1Customer_2id);
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
        java.lang.String deleteCustomer51mtemp = sampleCustomerWebserviceProxyid.deleteCustomer(webservice_layer1Customer_10id);
if(deleteCustomer51mtemp == null){
%>
<%=deleteCustomer51mtemp %>
<%
}else{
        String tempResultreturnp52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteCustomer51mtemp));
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