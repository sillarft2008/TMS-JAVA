<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleJobWebserviceProxyid" scope="session" class="webservice_layer.JobWebserviceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleJobWebserviceProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleJobWebserviceProxyid.getEndpoint();
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
        sampleJobWebserviceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webservice_layer.JobWebservice getJobWebservice10mtemp = sampleJobWebserviceProxyid.getJobWebservice();
if(getJobWebservice10mtemp == null){
%>
<%=getJobWebservice10mtemp %>
<%
}else{
        if(getJobWebservice10mtemp!= null){
        String tempreturnp11 = getJobWebservice10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String startDate_2id=  request.getParameter("startDate18");
            java.util.Calendar startDate_2idTemp = null;
        if(!startDate_2id.equals("")){
        java.text.DateFormat dateFormatstartDate18 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate18  = dateFormatstartDate18.parse(startDate_2id);
         startDate_2idTemp = new java.util.GregorianCalendar();
        startDate_2idTemp.setTime(dateTempstartDate18);
        }
        String address_3id=  request.getParameter("address20");
            java.lang.String address_3idTemp = null;
        if(!address_3id.equals("")){
         address_3idTemp  = address_3id;
        }
        String endDate_4id=  request.getParameter("endDate22");
            java.util.Calendar endDate_4idTemp = null;
        if(!endDate_4id.equals("")){
        java.text.DateFormat dateFormatendDate22 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate22  = dateFormatendDate22.parse(endDate_4id);
         endDate_4idTemp = new java.util.GregorianCalendar();
        endDate_4idTemp.setTime(dateTempendDate22);
        }
        String telefone_6id=  request.getParameter("telefone26");
            java.lang.String telefone_6idTemp = null;
        if(!telefone_6id.equals("")){
         telefone_6idTemp  = telefone_6id;
        }
        String cvr_7id=  request.getParameter("cvr28");
        int cvr_7idTemp  = Integer.parseInt(cvr_7id);
        String address_8id=  request.getParameter("address30");
            java.lang.String address_8idTemp = null;
        if(!address_8id.equals("")){
         address_8idTemp  = address_8id;
        }
        String lastName_9id=  request.getParameter("lastName32");
            java.lang.String lastName_9idTemp = null;
        if(!lastName_9id.equals("")){
         lastName_9idTemp  = lastName_9id;
        }
        String firstName_10id=  request.getParameter("firstName34");
            java.lang.String firstName_10idTemp = null;
        if(!firstName_10id.equals("")){
         firstName_10idTemp  = firstName_10id;
        }
        String companyName_11id=  request.getParameter("companyName36");
            java.lang.String companyName_11idTemp = null;
        if(!companyName_11id.equals("")){
         companyName_11idTemp  = companyName_11id;
        }
        String id_12id=  request.getParameter("id38");
        int id_12idTemp  = Integer.parseInt(id_12id);
        %>
        <jsp:useBean id="webservice_layer1Customer_5id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_5id.setTelefone(telefone_6idTemp);
        webservice_layer1Customer_5id.setCvr(cvr_7idTemp);
        webservice_layer1Customer_5id.setAddress(address_8idTemp);
        webservice_layer1Customer_5id.setLastName(lastName_9idTemp);
        webservice_layer1Customer_5id.setFirstName(firstName_10idTemp);
        webservice_layer1Customer_5id.setCompanyName(companyName_11idTemp);
        webservice_layer1Customer_5id.setId(id_12idTemp);
        String id_13id=  request.getParameter("id40");
        int id_13idTemp  = Integer.parseInt(id_13id);
        %>
        <jsp:useBean id="webservice_layer1Job_1id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_1id.setStartDate(startDate_2idTemp);
        webservice_layer1Job_1id.setAddress(address_3idTemp);
        webservice_layer1Job_1id.setEndDate(endDate_4idTemp);
        webservice_layer1Job_1id.setCustomer(webservice_layer1Customer_5id);
        webservice_layer1Job_1id.setId(id_13idTemp);
        java.lang.String deleteJob13mtemp = sampleJobWebserviceProxyid.deleteJob(webservice_layer1Job_1id);
if(deleteJob13mtemp == null){
%>
<%=deleteJob13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteJob13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 42:
        gotMethod = true;
        String customerId_14id=  request.getParameter("customerId45");
        int customerId_14idTemp  = Integer.parseInt(customerId_14id);
        webservice_layer.Job[] findCustomerJobArray42mtemp = sampleJobWebserviceProxyid.findCustomerJobArray(customerId_14idTemp);
if(findCustomerJobArray42mtemp == null){
%>
<%=findCustomerJobArray42mtemp %>
<%
}else{
        String tempreturnp43 = null;
        if(findCustomerJobArray42mtemp != null){
        java.util.List listreturnp43= java.util.Arrays.asList(findCustomerJobArray42mtemp);
        tempreturnp43 = listreturnp43.toString();
        }
        %>
        <%=tempreturnp43%>
        <%
}
break;
case 47:
        gotMethod = true;
        String jobId_15id=  request.getParameter("jobId74");
        int jobId_15idTemp  = Integer.parseInt(jobId_15id);
        webservice_layer.Job findJob47mtemp = sampleJobWebserviceProxyid.findJob(jobId_15idTemp);
if(findJob47mtemp == null){
%>
<%=findJob47mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(findJob47mtemp != null){
java.util.Calendar typestartDate50 = findJob47mtemp.getStartDate();
        java.text.DateFormat dateFormatstartDate50 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate50 = typestartDate50.getTime();
        String tempResultstartDate50 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate50.format(datestartDate50));
        %>
        <%= tempResultstartDate50 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findJob47mtemp != null){
java.lang.String typeaddress52 = findJob47mtemp.getAddress();
        String tempResultaddress52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress52));
        %>
        <%= tempResultaddress52 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findJob47mtemp != null){
java.util.Calendar typeendDate54 = findJob47mtemp.getEndDate();
        java.text.DateFormat dateFormatendDate54 = java.text.DateFormat.getDateInstance();
        java.util.Date dateendDate54 = typeendDate54.getTime();
        String tempResultendDate54 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatendDate54.format(dateendDate54));
        %>
        <%= tempResultendDate54 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD>
<%
if(findJob47mtemp != null){
webservice_layer.Customer tebece0=findJob47mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typetelefone58 = tebece0.getTelefone();
        String tempResulttelefone58 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone58));
        %>
        <%= tempResulttelefone58 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findJob47mtemp != null){
webservice_layer.Customer tebece0=findJob47mtemp.getCustomer();
if(tebece0 != null){
%>
<%=tebece0.getCvr()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findJob47mtemp != null){
webservice_layer.Customer tebece0=findJob47mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typeaddress62 = tebece0.getAddress();
        String tempResultaddress62 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress62));
        %>
        <%= tempResultaddress62 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findJob47mtemp != null){
webservice_layer.Customer tebece0=findJob47mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typelastName64 = tebece0.getLastName();
        String tempResultlastName64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName64));
        %>
        <%= tempResultlastName64 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findJob47mtemp != null){
webservice_layer.Customer tebece0=findJob47mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typefirstName66 = tebece0.getFirstName();
        String tempResultfirstName66 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName66));
        %>
        <%= tempResultfirstName66 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findJob47mtemp != null){
webservice_layer.Customer tebece0=findJob47mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typecompanyName68 = tebece0.getCompanyName();
        String tempResultcompanyName68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName68));
        %>
        <%= tempResultcompanyName68 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findJob47mtemp != null){
webservice_layer.Customer tebece0=findJob47mtemp.getCustomer();
if(tebece0 != null){
%>
<%=tebece0.getId()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findJob47mtemp != null){
%>
<%=findJob47mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 76:
        gotMethod = true;
        webservice_layer.Job[] findJobArray76mtemp = sampleJobWebserviceProxyid.findJobArray();
if(findJobArray76mtemp == null){
%>
<%=findJobArray76mtemp %>
<%
}else{
        String tempreturnp77 = null;
        if(findJobArray76mtemp != null){
        java.util.List listreturnp77= java.util.Arrays.asList(findJobArray76mtemp);
        tempreturnp77 = listreturnp77.toString();
        }
        %>
        <%=tempreturnp77%>
        <%
}
break;
case 79:
        gotMethod = true;
        String startDate_17id=  request.getParameter("startDate84");
            java.util.Calendar startDate_17idTemp = null;
        if(!startDate_17id.equals("")){
        java.text.DateFormat dateFormatstartDate84 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate84  = dateFormatstartDate84.parse(startDate_17id);
         startDate_17idTemp = new java.util.GregorianCalendar();
        startDate_17idTemp.setTime(dateTempstartDate84);
        }
        String address_18id=  request.getParameter("address86");
            java.lang.String address_18idTemp = null;
        if(!address_18id.equals("")){
         address_18idTemp  = address_18id;
        }
        String endDate_19id=  request.getParameter("endDate88");
            java.util.Calendar endDate_19idTemp = null;
        if(!endDate_19id.equals("")){
        java.text.DateFormat dateFormatendDate88 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate88  = dateFormatendDate88.parse(endDate_19id);
         endDate_19idTemp = new java.util.GregorianCalendar();
        endDate_19idTemp.setTime(dateTempendDate88);
        }
        String telefone_21id=  request.getParameter("telefone92");
            java.lang.String telefone_21idTemp = null;
        if(!telefone_21id.equals("")){
         telefone_21idTemp  = telefone_21id;
        }
        String cvr_22id=  request.getParameter("cvr94");
        int cvr_22idTemp  = Integer.parseInt(cvr_22id);
        String address_23id=  request.getParameter("address96");
            java.lang.String address_23idTemp = null;
        if(!address_23id.equals("")){
         address_23idTemp  = address_23id;
        }
        String lastName_24id=  request.getParameter("lastName98");
            java.lang.String lastName_24idTemp = null;
        if(!lastName_24id.equals("")){
         lastName_24idTemp  = lastName_24id;
        }
        String firstName_25id=  request.getParameter("firstName100");
            java.lang.String firstName_25idTemp = null;
        if(!firstName_25id.equals("")){
         firstName_25idTemp  = firstName_25id;
        }
        String companyName_26id=  request.getParameter("companyName102");
            java.lang.String companyName_26idTemp = null;
        if(!companyName_26id.equals("")){
         companyName_26idTemp  = companyName_26id;
        }
        String id_27id=  request.getParameter("id104");
        int id_27idTemp  = Integer.parseInt(id_27id);
        %>
        <jsp:useBean id="webservice_layer1Customer_20id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_20id.setTelefone(telefone_21idTemp);
        webservice_layer1Customer_20id.setCvr(cvr_22idTemp);
        webservice_layer1Customer_20id.setAddress(address_23idTemp);
        webservice_layer1Customer_20id.setLastName(lastName_24idTemp);
        webservice_layer1Customer_20id.setFirstName(firstName_25idTemp);
        webservice_layer1Customer_20id.setCompanyName(companyName_26idTemp);
        webservice_layer1Customer_20id.setId(id_27idTemp);
        String id_28id=  request.getParameter("id106");
        int id_28idTemp  = Integer.parseInt(id_28id);
        %>
        <jsp:useBean id="webservice_layer1Job_16id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_16id.setStartDate(startDate_17idTemp);
        webservice_layer1Job_16id.setAddress(address_18idTemp);
        webservice_layer1Job_16id.setEndDate(endDate_19idTemp);
        webservice_layer1Job_16id.setCustomer(webservice_layer1Customer_20id);
        webservice_layer1Job_16id.setId(id_28idTemp);
        java.lang.String updateJob79mtemp = sampleJobWebserviceProxyid.updateJob(webservice_layer1Job_16id);
if(updateJob79mtemp == null){
%>
<%=updateJob79mtemp %>
<%
}else{
        String tempResultreturnp80 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateJob79mtemp));
        %>
        <%= tempResultreturnp80 %>
        <%
}
break;
case 108:
        gotMethod = true;
        String startDate_30id=  request.getParameter("startDate113");
            java.util.Calendar startDate_30idTemp = null;
        if(!startDate_30id.equals("")){
        java.text.DateFormat dateFormatstartDate113 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate113  = dateFormatstartDate113.parse(startDate_30id);
         startDate_30idTemp = new java.util.GregorianCalendar();
        startDate_30idTemp.setTime(dateTempstartDate113);
        }
        String address_31id=  request.getParameter("address115");
            java.lang.String address_31idTemp = null;
        if(!address_31id.equals("")){
         address_31idTemp  = address_31id;
        }
        String endDate_32id=  request.getParameter("endDate117");
            java.util.Calendar endDate_32idTemp = null;
        if(!endDate_32id.equals("")){
        java.text.DateFormat dateFormatendDate117 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate117  = dateFormatendDate117.parse(endDate_32id);
         endDate_32idTemp = new java.util.GregorianCalendar();
        endDate_32idTemp.setTime(dateTempendDate117);
        }
        String telefone_34id=  request.getParameter("telefone121");
            java.lang.String telefone_34idTemp = null;
        if(!telefone_34id.equals("")){
         telefone_34idTemp  = telefone_34id;
        }
        String cvr_35id=  request.getParameter("cvr123");
        int cvr_35idTemp  = Integer.parseInt(cvr_35id);
        String address_36id=  request.getParameter("address125");
            java.lang.String address_36idTemp = null;
        if(!address_36id.equals("")){
         address_36idTemp  = address_36id;
        }
        String lastName_37id=  request.getParameter("lastName127");
            java.lang.String lastName_37idTemp = null;
        if(!lastName_37id.equals("")){
         lastName_37idTemp  = lastName_37id;
        }
        String firstName_38id=  request.getParameter("firstName129");
            java.lang.String firstName_38idTemp = null;
        if(!firstName_38id.equals("")){
         firstName_38idTemp  = firstName_38id;
        }
        String companyName_39id=  request.getParameter("companyName131");
            java.lang.String companyName_39idTemp = null;
        if(!companyName_39id.equals("")){
         companyName_39idTemp  = companyName_39id;
        }
        String id_40id=  request.getParameter("id133");
        int id_40idTemp  = Integer.parseInt(id_40id);
        %>
        <jsp:useBean id="webservice_layer1Customer_33id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_33id.setTelefone(telefone_34idTemp);
        webservice_layer1Customer_33id.setCvr(cvr_35idTemp);
        webservice_layer1Customer_33id.setAddress(address_36idTemp);
        webservice_layer1Customer_33id.setLastName(lastName_37idTemp);
        webservice_layer1Customer_33id.setFirstName(firstName_38idTemp);
        webservice_layer1Customer_33id.setCompanyName(companyName_39idTemp);
        webservice_layer1Customer_33id.setId(id_40idTemp);
        String id_41id=  request.getParameter("id135");
        int id_41idTemp  = Integer.parseInt(id_41id);
        %>
        <jsp:useBean id="webservice_layer1Job_29id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_29id.setStartDate(startDate_30idTemp);
        webservice_layer1Job_29id.setAddress(address_31idTemp);
        webservice_layer1Job_29id.setEndDate(endDate_32idTemp);
        webservice_layer1Job_29id.setCustomer(webservice_layer1Customer_33id);
        webservice_layer1Job_29id.setId(id_41idTemp);
        sampleJobWebserviceProxyid.createJob(webservice_layer1Job_29id);
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