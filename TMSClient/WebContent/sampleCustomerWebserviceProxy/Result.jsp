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
        webservice_layer.Customer[] findCustomerArray13mtemp = sampleCustomerWebserviceProxyid.findCustomerArray();
if(findCustomerArray13mtemp == null){
%>
<%=findCustomerArray13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(findCustomerArray13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(findCustomerArray13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 16:
        gotMethod = true;
        String telefone_2id=  request.getParameter("telefone21");
            java.lang.String telefone_2idTemp = null;
        if(!telefone_2id.equals("")){
         telefone_2idTemp  = telefone_2id;
        }
        String cvr_3id=  request.getParameter("cvr23");
        int cvr_3idTemp  = Integer.parseInt(cvr_3id);
        String address_4id=  request.getParameter("address25");
            java.lang.String address_4idTemp = null;
        if(!address_4id.equals("")){
         address_4idTemp  = address_4id;
        }
        String lastName_5id=  request.getParameter("lastName27");
            java.lang.String lastName_5idTemp = null;
        if(!lastName_5id.equals("")){
         lastName_5idTemp  = lastName_5id;
        }
        String firstName_6id=  request.getParameter("firstName29");
            java.lang.String firstName_6idTemp = null;
        if(!firstName_6id.equals("")){
         firstName_6idTemp  = firstName_6id;
        }
        String companyName_7id=  request.getParameter("companyName31");
            java.lang.String companyName_7idTemp = null;
        if(!companyName_7id.equals("")){
         companyName_7idTemp  = companyName_7id;
        }
        String id_8id=  request.getParameter("id33");
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
        java.lang.String createCustomer16mtemp = sampleCustomerWebserviceProxyid.createCustomer(webservice_layer1Customer_1id);
if(createCustomer16mtemp == null){
%>
<%=createCustomer16mtemp %>
<%
}else{
        String tempResultreturnp17 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createCustomer16mtemp));
        %>
        <%= tempResultreturnp17 %>
        <%
}
break;
case 35:
        gotMethod = true;
        String customerNo_9id=  request.getParameter("customerNo52");
        int customerNo_9idTemp  = Integer.parseInt(customerNo_9id);
        webservice_layer.Customer findCustomer35mtemp = sampleCustomerWebserviceProxyid.findCustomer(customerNo_9idTemp);
if(findCustomer35mtemp == null){
%>
<%=findCustomer35mtemp %>
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
if(findCustomer35mtemp != null){
java.lang.String typetelefone38 = findCustomer35mtemp.getTelefone();
        String tempResulttelefone38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone38));
        %>
        <%= tempResulttelefone38 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findCustomer35mtemp != null){
%>
<%=findCustomer35mtemp.getCvr()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findCustomer35mtemp != null){
java.lang.String typeaddress42 = findCustomer35mtemp.getAddress();
        String tempResultaddress42 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress42));
        %>
        <%= tempResultaddress42 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findCustomer35mtemp != null){
java.lang.String typelastName44 = findCustomer35mtemp.getLastName();
        String tempResultlastName44 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName44));
        %>
        <%= tempResultlastName44 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findCustomer35mtemp != null){
java.lang.String typefirstName46 = findCustomer35mtemp.getFirstName();
        String tempResultfirstName46 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName46));
        %>
        <%= tempResultfirstName46 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findCustomer35mtemp != null){
java.lang.String typecompanyName48 = findCustomer35mtemp.getCompanyName();
        String tempResultcompanyName48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName48));
        %>
        <%= tempResultcompanyName48 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findCustomer35mtemp != null){
%>
<%=findCustomer35mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 54:
        gotMethod = true;
        String telefone_11id=  request.getParameter("telefone59");
            java.lang.String telefone_11idTemp = null;
        if(!telefone_11id.equals("")){
         telefone_11idTemp  = telefone_11id;
        }
        String cvr_12id=  request.getParameter("cvr61");
        int cvr_12idTemp  = Integer.parseInt(cvr_12id);
        String address_13id=  request.getParameter("address63");
            java.lang.String address_13idTemp = null;
        if(!address_13id.equals("")){
         address_13idTemp  = address_13id;
        }
        String lastName_14id=  request.getParameter("lastName65");
            java.lang.String lastName_14idTemp = null;
        if(!lastName_14id.equals("")){
         lastName_14idTemp  = lastName_14id;
        }
        String firstName_15id=  request.getParameter("firstName67");
            java.lang.String firstName_15idTemp = null;
        if(!firstName_15id.equals("")){
         firstName_15idTemp  = firstName_15id;
        }
        String companyName_16id=  request.getParameter("companyName69");
            java.lang.String companyName_16idTemp = null;
        if(!companyName_16id.equals("")){
         companyName_16idTemp  = companyName_16id;
        }
        String id_17id=  request.getParameter("id71");
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
        java.lang.String deleteCustomer54mtemp = sampleCustomerWebserviceProxyid.deleteCustomer(webservice_layer1Customer_10id);
if(deleteCustomer54mtemp == null){
%>
<%=deleteCustomer54mtemp %>
<%
}else{
        String tempResultreturnp55 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteCustomer54mtemp));
        %>
        <%= tempResultreturnp55 %>
        <%
}
break;
case 73:
        gotMethod = true;
        String telefone_19id=  request.getParameter("telefone78");
            java.lang.String telefone_19idTemp = null;
        if(!telefone_19id.equals("")){
         telefone_19idTemp  = telefone_19id;
        }
        String cvr_20id=  request.getParameter("cvr80");
        int cvr_20idTemp  = Integer.parseInt(cvr_20id);
        String address_21id=  request.getParameter("address82");
            java.lang.String address_21idTemp = null;
        if(!address_21id.equals("")){
         address_21idTemp  = address_21id;
        }
        String lastName_22id=  request.getParameter("lastName84");
            java.lang.String lastName_22idTemp = null;
        if(!lastName_22id.equals("")){
         lastName_22idTemp  = lastName_22id;
        }
        String firstName_23id=  request.getParameter("firstName86");
            java.lang.String firstName_23idTemp = null;
        if(!firstName_23id.equals("")){
         firstName_23idTemp  = firstName_23id;
        }
        String companyName_24id=  request.getParameter("companyName88");
            java.lang.String companyName_24idTemp = null;
        if(!companyName_24id.equals("")){
         companyName_24idTemp  = companyName_24id;
        }
        String id_25id=  request.getParameter("id90");
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
        java.lang.String updateCustomer73mtemp = sampleCustomerWebserviceProxyid.updateCustomer(webservice_layer1Customer_18id);
if(updateCustomer73mtemp == null){
%>
<%=updateCustomer73mtemp %>
<%
}else{
        String tempResultreturnp74 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateCustomer73mtemp));
        %>
        <%= tempResultreturnp74 %>
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