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
        String customerId_1id=  request.getParameter("customerId16");
        int customerId_1idTemp  = Integer.parseInt(customerId_1id);
        webservice_layer.Job[] findCustomerJobArray13mtemp = sampleJobWebserviceProxyid.findCustomerJobArray(customerId_1idTemp);
if(findCustomerJobArray13mtemp == null){
%>
<%=findCustomerJobArray13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(findCustomerJobArray13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(findCustomerJobArray13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 18:
        gotMethod = true;
        String startDate_3id=  request.getParameter("startDate23");
            java.util.Calendar startDate_3idTemp = null;
        if(!startDate_3id.equals("")){
        java.text.DateFormat dateFormatstartDate23 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate23  = dateFormatstartDate23.parse(startDate_3id);
         startDate_3idTemp = new java.util.GregorianCalendar();
        startDate_3idTemp.setTime(dateTempstartDate23);
        }
        String address_4id=  request.getParameter("address25");
            java.lang.String address_4idTemp = null;
        if(!address_4id.equals("")){
         address_4idTemp  = address_4id;
        }
        String endDate_5id=  request.getParameter("endDate27");
            java.util.Calendar endDate_5idTemp = null;
        if(!endDate_5id.equals("")){
        java.text.DateFormat dateFormatendDate27 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate27  = dateFormatendDate27.parse(endDate_5id);
         endDate_5idTemp = new java.util.GregorianCalendar();
        endDate_5idTemp.setTime(dateTempendDate27);
        }
        String telefone_7id=  request.getParameter("telefone31");
            java.lang.String telefone_7idTemp = null;
        if(!telefone_7id.equals("")){
         telefone_7idTemp  = telefone_7id;
        }
        String cvr_8id=  request.getParameter("cvr33");
        int cvr_8idTemp  = Integer.parseInt(cvr_8id);
        String address_9id=  request.getParameter("address35");
            java.lang.String address_9idTemp = null;
        if(!address_9id.equals("")){
         address_9idTemp  = address_9id;
        }
        String lastName_10id=  request.getParameter("lastName37");
            java.lang.String lastName_10idTemp = null;
        if(!lastName_10id.equals("")){
         lastName_10idTemp  = lastName_10id;
        }
        String firstName_11id=  request.getParameter("firstName39");
            java.lang.String firstName_11idTemp = null;
        if(!firstName_11id.equals("")){
         firstName_11idTemp  = firstName_11id;
        }
        String companyName_12id=  request.getParameter("companyName41");
            java.lang.String companyName_12idTemp = null;
        if(!companyName_12id.equals("")){
         companyName_12idTemp  = companyName_12id;
        }
        String id_13id=  request.getParameter("id43");
        int id_13idTemp  = Integer.parseInt(id_13id);
        %>
        <jsp:useBean id="webservice_layer1Customer_6id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_6id.setTelefone(telefone_7idTemp);
        webservice_layer1Customer_6id.setCvr(cvr_8idTemp);
        webservice_layer1Customer_6id.setAddress(address_9idTemp);
        webservice_layer1Customer_6id.setLastName(lastName_10idTemp);
        webservice_layer1Customer_6id.setFirstName(firstName_11idTemp);
        webservice_layer1Customer_6id.setCompanyName(companyName_12idTemp);
        webservice_layer1Customer_6id.setId(id_13idTemp);
        String id_14id=  request.getParameter("id45");
        int id_14idTemp  = Integer.parseInt(id_14id);
        %>
        <jsp:useBean id="webservice_layer1Job_2id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_2id.setStartDate(startDate_3idTemp);
        webservice_layer1Job_2id.setAddress(address_4idTemp);
        webservice_layer1Job_2id.setEndDate(endDate_5idTemp);
        webservice_layer1Job_2id.setCustomer(webservice_layer1Customer_6id);
        webservice_layer1Job_2id.setId(id_14idTemp);
        java.lang.String updateJob18mtemp = sampleJobWebserviceProxyid.updateJob(webservice_layer1Job_2id);
if(updateJob18mtemp == null){
%>
<%=updateJob18mtemp %>
<%
}else{
        String tempResultreturnp19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateJob18mtemp));
        %>
        <%= tempResultreturnp19 %>
        <%
}
break;
case 47:
        gotMethod = true;
        String startDate_16id=  request.getParameter("startDate52");
            java.util.Calendar startDate_16idTemp = null;
        if(!startDate_16id.equals("")){
        java.text.DateFormat dateFormatstartDate52 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate52  = dateFormatstartDate52.parse(startDate_16id);
         startDate_16idTemp = new java.util.GregorianCalendar();
        startDate_16idTemp.setTime(dateTempstartDate52);
        }
        String address_17id=  request.getParameter("address54");
            java.lang.String address_17idTemp = null;
        if(!address_17id.equals("")){
         address_17idTemp  = address_17id;
        }
        String endDate_18id=  request.getParameter("endDate56");
            java.util.Calendar endDate_18idTemp = null;
        if(!endDate_18id.equals("")){
        java.text.DateFormat dateFormatendDate56 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate56  = dateFormatendDate56.parse(endDate_18id);
         endDate_18idTemp = new java.util.GregorianCalendar();
        endDate_18idTemp.setTime(dateTempendDate56);
        }
        String telefone_20id=  request.getParameter("telefone60");
            java.lang.String telefone_20idTemp = null;
        if(!telefone_20id.equals("")){
         telefone_20idTemp  = telefone_20id;
        }
        String cvr_21id=  request.getParameter("cvr62");
        int cvr_21idTemp  = Integer.parseInt(cvr_21id);
        String address_22id=  request.getParameter("address64");
            java.lang.String address_22idTemp = null;
        if(!address_22id.equals("")){
         address_22idTemp  = address_22id;
        }
        String lastName_23id=  request.getParameter("lastName66");
            java.lang.String lastName_23idTemp = null;
        if(!lastName_23id.equals("")){
         lastName_23idTemp  = lastName_23id;
        }
        String firstName_24id=  request.getParameter("firstName68");
            java.lang.String firstName_24idTemp = null;
        if(!firstName_24id.equals("")){
         firstName_24idTemp  = firstName_24id;
        }
        String companyName_25id=  request.getParameter("companyName70");
            java.lang.String companyName_25idTemp = null;
        if(!companyName_25id.equals("")){
         companyName_25idTemp  = companyName_25id;
        }
        String id_26id=  request.getParameter("id72");
        int id_26idTemp  = Integer.parseInt(id_26id);
        %>
        <jsp:useBean id="webservice_layer1Customer_19id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_19id.setTelefone(telefone_20idTemp);
        webservice_layer1Customer_19id.setCvr(cvr_21idTemp);
        webservice_layer1Customer_19id.setAddress(address_22idTemp);
        webservice_layer1Customer_19id.setLastName(lastName_23idTemp);
        webservice_layer1Customer_19id.setFirstName(firstName_24idTemp);
        webservice_layer1Customer_19id.setCompanyName(companyName_25idTemp);
        webservice_layer1Customer_19id.setId(id_26idTemp);
        String id_27id=  request.getParameter("id74");
        int id_27idTemp  = Integer.parseInt(id_27id);
        %>
        <jsp:useBean id="webservice_layer1Job_15id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_15id.setStartDate(startDate_16idTemp);
        webservice_layer1Job_15id.setAddress(address_17idTemp);
        webservice_layer1Job_15id.setEndDate(endDate_18idTemp);
        webservice_layer1Job_15id.setCustomer(webservice_layer1Customer_19id);
        webservice_layer1Job_15id.setId(id_27idTemp);
        String competency_29id=  request.getParameter("competency78");
            java.lang.String competency_29idTemp = null;
        if(!competency_29id.equals("")){
         competency_29idTemp  = competency_29id;
        }
        String id_30id=  request.getParameter("id80");
        int id_30idTemp  = Integer.parseInt(id_30id);
        %>
        <jsp:useBean id="webservice_layer1Competency_28id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_28id.setCompetency(competency_29idTemp);
        webservice_layer1Competency_28id.setId(id_30idTemp);
        sampleJobWebserviceProxyid.addCompetency(webservice_layer1Job_15id,webservice_layer1Competency_28id);
break;
case 82:
        gotMethod = true;
        String startDate_32id=  request.getParameter("startDate87");
            java.util.Calendar startDate_32idTemp = null;
        if(!startDate_32id.equals("")){
        java.text.DateFormat dateFormatstartDate87 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate87  = dateFormatstartDate87.parse(startDate_32id);
         startDate_32idTemp = new java.util.GregorianCalendar();
        startDate_32idTemp.setTime(dateTempstartDate87);
        }
        String address_33id=  request.getParameter("address89");
            java.lang.String address_33idTemp = null;
        if(!address_33id.equals("")){
         address_33idTemp  = address_33id;
        }
        String endDate_34id=  request.getParameter("endDate91");
            java.util.Calendar endDate_34idTemp = null;
        if(!endDate_34id.equals("")){
        java.text.DateFormat dateFormatendDate91 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate91  = dateFormatendDate91.parse(endDate_34id);
         endDate_34idTemp = new java.util.GregorianCalendar();
        endDate_34idTemp.setTime(dateTempendDate91);
        }
        String telefone_36id=  request.getParameter("telefone95");
            java.lang.String telefone_36idTemp = null;
        if(!telefone_36id.equals("")){
         telefone_36idTemp  = telefone_36id;
        }
        String cvr_37id=  request.getParameter("cvr97");
        int cvr_37idTemp  = Integer.parseInt(cvr_37id);
        String address_38id=  request.getParameter("address99");
            java.lang.String address_38idTemp = null;
        if(!address_38id.equals("")){
         address_38idTemp  = address_38id;
        }
        String lastName_39id=  request.getParameter("lastName101");
            java.lang.String lastName_39idTemp = null;
        if(!lastName_39id.equals("")){
         lastName_39idTemp  = lastName_39id;
        }
        String firstName_40id=  request.getParameter("firstName103");
            java.lang.String firstName_40idTemp = null;
        if(!firstName_40id.equals("")){
         firstName_40idTemp  = firstName_40id;
        }
        String companyName_41id=  request.getParameter("companyName105");
            java.lang.String companyName_41idTemp = null;
        if(!companyName_41id.equals("")){
         companyName_41idTemp  = companyName_41id;
        }
        String id_42id=  request.getParameter("id107");
        int id_42idTemp  = Integer.parseInt(id_42id);
        %>
        <jsp:useBean id="webservice_layer1Customer_35id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_35id.setTelefone(telefone_36idTemp);
        webservice_layer1Customer_35id.setCvr(cvr_37idTemp);
        webservice_layer1Customer_35id.setAddress(address_38idTemp);
        webservice_layer1Customer_35id.setLastName(lastName_39idTemp);
        webservice_layer1Customer_35id.setFirstName(firstName_40idTemp);
        webservice_layer1Customer_35id.setCompanyName(companyName_41idTemp);
        webservice_layer1Customer_35id.setId(id_42idTemp);
        String id_43id=  request.getParameter("id109");
        int id_43idTemp  = Integer.parseInt(id_43id);
        %>
        <jsp:useBean id="webservice_layer1Job_31id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_31id.setStartDate(startDate_32idTemp);
        webservice_layer1Job_31id.setAddress(address_33idTemp);
        webservice_layer1Job_31id.setEndDate(endDate_34idTemp);
        webservice_layer1Job_31id.setCustomer(webservice_layer1Customer_35id);
        webservice_layer1Job_31id.setId(id_43idTemp);
        java.lang.String deleteJob82mtemp = sampleJobWebserviceProxyid.deleteJob(webservice_layer1Job_31id);
if(deleteJob82mtemp == null){
%>
<%=deleteJob82mtemp %>
<%
}else{
        String tempResultreturnp83 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteJob82mtemp));
        %>
        <%= tempResultreturnp83 %>
        <%
}
break;
case 111:
        gotMethod = true;
        webservice_layer.Job[] findJobArray111mtemp = sampleJobWebserviceProxyid.findJobArray();
if(findJobArray111mtemp == null){
%>
<%=findJobArray111mtemp %>
<%
}else{
        String tempreturnp112 = null;
        if(findJobArray111mtemp != null){
        java.util.List listreturnp112= java.util.Arrays.asList(findJobArray111mtemp);
        tempreturnp112 = listreturnp112.toString();
        }
        %>
        <%=tempreturnp112%>
        <%
}
break;
case 114:
        gotMethod = true;
        String jobId_44id=  request.getParameter("jobId143");
        int jobId_44idTemp  = Integer.parseInt(jobId_44id);
        webservice_layer.Job findJob114mtemp = sampleJobWebserviceProxyid.findJob(jobId_44idTemp);
if(findJob114mtemp == null){
%>
<%=findJob114mtemp %>
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
if(findJob114mtemp != null){
java.util.Calendar typestartDate117 = findJob114mtemp.getStartDate();
        java.text.DateFormat dateFormatstartDate117 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate117 = typestartDate117.getTime();
        String tempResultstartDate117 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate117.format(datestartDate117));
        %>
        <%= tempResultstartDate117 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findJob114mtemp != null){
java.lang.String typeaddress119 = findJob114mtemp.getAddress();
        String tempResultaddress119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress119));
        %>
        <%= tempResultaddress119 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">arrayOFCompetency:</TD>
<TD>
<%
if(findJob114mtemp != null){
webservice_layer.Competency[] typearrayOFCompetency121 = findJob114mtemp.getArrayOFCompetency();
        String temparrayOFCompetency121 = null;
        if(typearrayOFCompetency121 != null){
        java.util.List listarrayOFCompetency121= java.util.Arrays.asList(typearrayOFCompetency121);
        temparrayOFCompetency121 = listarrayOFCompetency121.toString();
        }
        %>
        <%=temparrayOFCompetency121%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findJob114mtemp != null){
java.util.Calendar typeendDate123 = findJob114mtemp.getEndDate();
        java.text.DateFormat dateFormatendDate123 = java.text.DateFormat.getDateInstance();
        java.util.Date dateendDate123 = typeendDate123.getTime();
        String tempResultendDate123 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatendDate123.format(dateendDate123));
        %>
        <%= tempResultendDate123 %>
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
if(findJob114mtemp != null){
webservice_layer.Customer tebece0=findJob114mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typetelefone127 = tebece0.getTelefone();
        String tempResulttelefone127 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone127));
        %>
        <%= tempResulttelefone127 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findJob114mtemp != null){
webservice_layer.Customer tebece0=findJob114mtemp.getCustomer();
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
if(findJob114mtemp != null){
webservice_layer.Customer tebece0=findJob114mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typeaddress131 = tebece0.getAddress();
        String tempResultaddress131 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress131));
        %>
        <%= tempResultaddress131 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findJob114mtemp != null){
webservice_layer.Customer tebece0=findJob114mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typelastName133 = tebece0.getLastName();
        String tempResultlastName133 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName133));
        %>
        <%= tempResultlastName133 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findJob114mtemp != null){
webservice_layer.Customer tebece0=findJob114mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typefirstName135 = tebece0.getFirstName();
        String tempResultfirstName135 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName135));
        %>
        <%= tempResultfirstName135 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findJob114mtemp != null){
webservice_layer.Customer tebece0=findJob114mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typecompanyName137 = tebece0.getCompanyName();
        String tempResultcompanyName137 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName137));
        %>
        <%= tempResultcompanyName137 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findJob114mtemp != null){
webservice_layer.Customer tebece0=findJob114mtemp.getCustomer();
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
if(findJob114mtemp != null){
%>
<%=findJob114mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 145:
        gotMethod = true;
        String startDate_46id=  request.getParameter("startDate150");
            java.util.Calendar startDate_46idTemp = null;
        if(!startDate_46id.equals("")){
        java.text.DateFormat dateFormatstartDate150 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate150  = dateFormatstartDate150.parse(startDate_46id);
         startDate_46idTemp = new java.util.GregorianCalendar();
        startDate_46idTemp.setTime(dateTempstartDate150);
        }
        String address_47id=  request.getParameter("address152");
            java.lang.String address_47idTemp = null;
        if(!address_47id.equals("")){
         address_47idTemp  = address_47id;
        }
        String endDate_48id=  request.getParameter("endDate154");
            java.util.Calendar endDate_48idTemp = null;
        if(!endDate_48id.equals("")){
        java.text.DateFormat dateFormatendDate154 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate154  = dateFormatendDate154.parse(endDate_48id);
         endDate_48idTemp = new java.util.GregorianCalendar();
        endDate_48idTemp.setTime(dateTempendDate154);
        }
        String telefone_50id=  request.getParameter("telefone158");
            java.lang.String telefone_50idTemp = null;
        if(!telefone_50id.equals("")){
         telefone_50idTemp  = telefone_50id;
        }
        String cvr_51id=  request.getParameter("cvr160");
        int cvr_51idTemp  = Integer.parseInt(cvr_51id);
        String address_52id=  request.getParameter("address162");
            java.lang.String address_52idTemp = null;
        if(!address_52id.equals("")){
         address_52idTemp  = address_52id;
        }
        String lastName_53id=  request.getParameter("lastName164");
            java.lang.String lastName_53idTemp = null;
        if(!lastName_53id.equals("")){
         lastName_53idTemp  = lastName_53id;
        }
        String firstName_54id=  request.getParameter("firstName166");
            java.lang.String firstName_54idTemp = null;
        if(!firstName_54id.equals("")){
         firstName_54idTemp  = firstName_54id;
        }
        String companyName_55id=  request.getParameter("companyName168");
            java.lang.String companyName_55idTemp = null;
        if(!companyName_55id.equals("")){
         companyName_55idTemp  = companyName_55id;
        }
        String id_56id=  request.getParameter("id170");
        int id_56idTemp  = Integer.parseInt(id_56id);
        %>
        <jsp:useBean id="webservice_layer1Customer_49id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_49id.setTelefone(telefone_50idTemp);
        webservice_layer1Customer_49id.setCvr(cvr_51idTemp);
        webservice_layer1Customer_49id.setAddress(address_52idTemp);
        webservice_layer1Customer_49id.setLastName(lastName_53idTemp);
        webservice_layer1Customer_49id.setFirstName(firstName_54idTemp);
        webservice_layer1Customer_49id.setCompanyName(companyName_55idTemp);
        webservice_layer1Customer_49id.setId(id_56idTemp);
        String id_57id=  request.getParameter("id172");
        int id_57idTemp  = Integer.parseInt(id_57id);
        %>
        <jsp:useBean id="webservice_layer1Job_45id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_45id.setStartDate(startDate_46idTemp);
        webservice_layer1Job_45id.setAddress(address_47idTemp);
        webservice_layer1Job_45id.setEndDate(endDate_48idTemp);
        webservice_layer1Job_45id.setCustomer(webservice_layer1Customer_49id);
        webservice_layer1Job_45id.setId(id_57idTemp);
        sampleJobWebserviceProxyid.createJob(webservice_layer1Job_45id);
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