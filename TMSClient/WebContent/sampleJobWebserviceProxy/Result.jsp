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
        sampleJobWebserviceProxyid.createJob(webservice_layer1Job_1id);
break;
case 42:
        gotMethod = true;
        webservice_layer.Job[] findJobArray42mtemp = sampleJobWebserviceProxyid.findJobArray();
if(findJobArray42mtemp == null){
%>
<%=findJobArray42mtemp %>
<%
}else{
        String tempreturnp43 = null;
        if(findJobArray42mtemp != null){
        java.util.List listreturnp43= java.util.Arrays.asList(findJobArray42mtemp);
        tempreturnp43 = listreturnp43.toString();
        }
        %>
        <%=tempreturnp43%>
        <%
}
break;
case 45:
        gotMethod = true;
        String jobId_14id=  request.getParameter("jobId74");
        int jobId_14idTemp  = Integer.parseInt(jobId_14id);
        webservice_layer.Job findJob45mtemp = sampleJobWebserviceProxyid.findJob(jobId_14idTemp);
if(findJob45mtemp == null){
%>
<%=findJob45mtemp %>
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
if(findJob45mtemp != null){
java.util.Calendar typestartDate48 = findJob45mtemp.getStartDate();
        java.text.DateFormat dateFormatstartDate48 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate48 = typestartDate48.getTime();
        String tempResultstartDate48 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate48.format(datestartDate48));
        %>
        <%= tempResultstartDate48 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findJob45mtemp != null){
java.lang.String typeaddress50 = findJob45mtemp.getAddress();
        String tempResultaddress50 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress50));
        %>
        <%= tempResultaddress50 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">arrayOFCompetency:</TD>
<TD>
<%
if(findJob45mtemp != null){
webservice_layer.Competency[] typearrayOFCompetency52 = findJob45mtemp.getArrayOFCompetency();
        String temparrayOFCompetency52 = null;
        if(typearrayOFCompetency52 != null){
        java.util.List listarrayOFCompetency52= java.util.Arrays.asList(typearrayOFCompetency52);
        temparrayOFCompetency52 = listarrayOFCompetency52.toString();
        }
        %>
        <%=temparrayOFCompetency52%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findJob45mtemp != null){
java.util.Calendar typeendDate54 = findJob45mtemp.getEndDate();
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
if(findJob45mtemp != null){
webservice_layer.Customer tebece0=findJob45mtemp.getCustomer();
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
if(findJob45mtemp != null){
webservice_layer.Customer tebece0=findJob45mtemp.getCustomer();
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
if(findJob45mtemp != null){
webservice_layer.Customer tebece0=findJob45mtemp.getCustomer();
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
if(findJob45mtemp != null){
webservice_layer.Customer tebece0=findJob45mtemp.getCustomer();
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
if(findJob45mtemp != null){
webservice_layer.Customer tebece0=findJob45mtemp.getCustomer();
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
if(findJob45mtemp != null){
webservice_layer.Customer tebece0=findJob45mtemp.getCustomer();
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
if(findJob45mtemp != null){
webservice_layer.Customer tebece0=findJob45mtemp.getCustomer();
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
if(findJob45mtemp != null){
%>
<%=findJob45mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 76:
        gotMethod = true;
        String startDate_16id=  request.getParameter("startDate81");
            java.util.Calendar startDate_16idTemp = null;
        if(!startDate_16id.equals("")){
        java.text.DateFormat dateFormatstartDate81 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate81  = dateFormatstartDate81.parse(startDate_16id);
         startDate_16idTemp = new java.util.GregorianCalendar();
        startDate_16idTemp.setTime(dateTempstartDate81);
        }
        String address_17id=  request.getParameter("address83");
            java.lang.String address_17idTemp = null;
        if(!address_17id.equals("")){
         address_17idTemp  = address_17id;
        }
        String endDate_18id=  request.getParameter("endDate85");
            java.util.Calendar endDate_18idTemp = null;
        if(!endDate_18id.equals("")){
        java.text.DateFormat dateFormatendDate85 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate85  = dateFormatendDate85.parse(endDate_18id);
         endDate_18idTemp = new java.util.GregorianCalendar();
        endDate_18idTemp.setTime(dateTempendDate85);
        }
        String telefone_20id=  request.getParameter("telefone89");
            java.lang.String telefone_20idTemp = null;
        if(!telefone_20id.equals("")){
         telefone_20idTemp  = telefone_20id;
        }
        String cvr_21id=  request.getParameter("cvr91");
        int cvr_21idTemp  = Integer.parseInt(cvr_21id);
        String address_22id=  request.getParameter("address93");
            java.lang.String address_22idTemp = null;
        if(!address_22id.equals("")){
         address_22idTemp  = address_22id;
        }
        String lastName_23id=  request.getParameter("lastName95");
            java.lang.String lastName_23idTemp = null;
        if(!lastName_23id.equals("")){
         lastName_23idTemp  = lastName_23id;
        }
        String firstName_24id=  request.getParameter("firstName97");
            java.lang.String firstName_24idTemp = null;
        if(!firstName_24id.equals("")){
         firstName_24idTemp  = firstName_24id;
        }
        String companyName_25id=  request.getParameter("companyName99");
            java.lang.String companyName_25idTemp = null;
        if(!companyName_25id.equals("")){
         companyName_25idTemp  = companyName_25id;
        }
        String id_26id=  request.getParameter("id101");
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
        String id_27id=  request.getParameter("id103");
        int id_27idTemp  = Integer.parseInt(id_27id);
        %>
        <jsp:useBean id="webservice_layer1Job_15id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_15id.setStartDate(startDate_16idTemp);
        webservice_layer1Job_15id.setAddress(address_17idTemp);
        webservice_layer1Job_15id.setEndDate(endDate_18idTemp);
        webservice_layer1Job_15id.setCustomer(webservice_layer1Customer_19id);
        webservice_layer1Job_15id.setId(id_27idTemp);
        String competency_29id=  request.getParameter("competency107");
            java.lang.String competency_29idTemp = null;
        if(!competency_29id.equals("")){
         competency_29idTemp  = competency_29id;
        }
        String id_30id=  request.getParameter("id109");
        int id_30idTemp  = Integer.parseInt(id_30id);
        %>
        <jsp:useBean id="webservice_layer1Competency_28id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_28id.setCompetency(competency_29idTemp);
        webservice_layer1Competency_28id.setId(id_30idTemp);
        sampleJobWebserviceProxyid.addCompetency(webservice_layer1Job_15id,webservice_layer1Competency_28id);
break;
case 111:
        gotMethod = true;
        String startDate_32id=  request.getParameter("startDate116");
            java.util.Calendar startDate_32idTemp = null;
        if(!startDate_32id.equals("")){
        java.text.DateFormat dateFormatstartDate116 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate116  = dateFormatstartDate116.parse(startDate_32id);
         startDate_32idTemp = new java.util.GregorianCalendar();
        startDate_32idTemp.setTime(dateTempstartDate116);
        }
        String address_33id=  request.getParameter("address118");
            java.lang.String address_33idTemp = null;
        if(!address_33id.equals("")){
         address_33idTemp  = address_33id;
        }
        String endDate_34id=  request.getParameter("endDate120");
            java.util.Calendar endDate_34idTemp = null;
        if(!endDate_34id.equals("")){
        java.text.DateFormat dateFormatendDate120 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate120  = dateFormatendDate120.parse(endDate_34id);
         endDate_34idTemp = new java.util.GregorianCalendar();
        endDate_34idTemp.setTime(dateTempendDate120);
        }
        String telefone_36id=  request.getParameter("telefone124");
            java.lang.String telefone_36idTemp = null;
        if(!telefone_36id.equals("")){
         telefone_36idTemp  = telefone_36id;
        }
        String cvr_37id=  request.getParameter("cvr126");
        int cvr_37idTemp  = Integer.parseInt(cvr_37id);
        String address_38id=  request.getParameter("address128");
            java.lang.String address_38idTemp = null;
        if(!address_38id.equals("")){
         address_38idTemp  = address_38id;
        }
        String lastName_39id=  request.getParameter("lastName130");
            java.lang.String lastName_39idTemp = null;
        if(!lastName_39id.equals("")){
         lastName_39idTemp  = lastName_39id;
        }
        String firstName_40id=  request.getParameter("firstName132");
            java.lang.String firstName_40idTemp = null;
        if(!firstName_40id.equals("")){
         firstName_40idTemp  = firstName_40id;
        }
        String companyName_41id=  request.getParameter("companyName134");
            java.lang.String companyName_41idTemp = null;
        if(!companyName_41id.equals("")){
         companyName_41idTemp  = companyName_41id;
        }
        String id_42id=  request.getParameter("id136");
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
        String id_43id=  request.getParameter("id138");
        int id_43idTemp  = Integer.parseInt(id_43id);
        %>
        <jsp:useBean id="webservice_layer1Job_31id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_31id.setStartDate(startDate_32idTemp);
        webservice_layer1Job_31id.setAddress(address_33idTemp);
        webservice_layer1Job_31id.setEndDate(endDate_34idTemp);
        webservice_layer1Job_31id.setCustomer(webservice_layer1Customer_35id);
        webservice_layer1Job_31id.setId(id_43idTemp);
        java.lang.String deleteJob111mtemp = sampleJobWebserviceProxyid.deleteJob(webservice_layer1Job_31id);
if(deleteJob111mtemp == null){
%>
<%=deleteJob111mtemp %>
<%
}else{
        String tempResultreturnp112 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteJob111mtemp));
        %>
        <%= tempResultreturnp112 %>
        <%
}
break;
case 140:
        gotMethod = true;
        String startDate_45id=  request.getParameter("startDate145");
            java.util.Calendar startDate_45idTemp = null;
        if(!startDate_45id.equals("")){
        java.text.DateFormat dateFormatstartDate145 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate145  = dateFormatstartDate145.parse(startDate_45id);
         startDate_45idTemp = new java.util.GregorianCalendar();
        startDate_45idTemp.setTime(dateTempstartDate145);
        }
        String address_46id=  request.getParameter("address147");
            java.lang.String address_46idTemp = null;
        if(!address_46id.equals("")){
         address_46idTemp  = address_46id;
        }
        String endDate_47id=  request.getParameter("endDate149");
            java.util.Calendar endDate_47idTemp = null;
        if(!endDate_47id.equals("")){
        java.text.DateFormat dateFormatendDate149 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate149  = dateFormatendDate149.parse(endDate_47id);
         endDate_47idTemp = new java.util.GregorianCalendar();
        endDate_47idTemp.setTime(dateTempendDate149);
        }
        String telefone_49id=  request.getParameter("telefone153");
            java.lang.String telefone_49idTemp = null;
        if(!telefone_49id.equals("")){
         telefone_49idTemp  = telefone_49id;
        }
        String cvr_50id=  request.getParameter("cvr155");
        int cvr_50idTemp  = Integer.parseInt(cvr_50id);
        String address_51id=  request.getParameter("address157");
            java.lang.String address_51idTemp = null;
        if(!address_51id.equals("")){
         address_51idTemp  = address_51id;
        }
        String lastName_52id=  request.getParameter("lastName159");
            java.lang.String lastName_52idTemp = null;
        if(!lastName_52id.equals("")){
         lastName_52idTemp  = lastName_52id;
        }
        String firstName_53id=  request.getParameter("firstName161");
            java.lang.String firstName_53idTemp = null;
        if(!firstName_53id.equals("")){
         firstName_53idTemp  = firstName_53id;
        }
        String companyName_54id=  request.getParameter("companyName163");
            java.lang.String companyName_54idTemp = null;
        if(!companyName_54id.equals("")){
         companyName_54idTemp  = companyName_54id;
        }
        String id_55id=  request.getParameter("id165");
        int id_55idTemp  = Integer.parseInt(id_55id);
        %>
        <jsp:useBean id="webservice_layer1Customer_48id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_48id.setTelefone(telefone_49idTemp);
        webservice_layer1Customer_48id.setCvr(cvr_50idTemp);
        webservice_layer1Customer_48id.setAddress(address_51idTemp);
        webservice_layer1Customer_48id.setLastName(lastName_52idTemp);
        webservice_layer1Customer_48id.setFirstName(firstName_53idTemp);
        webservice_layer1Customer_48id.setCompanyName(companyName_54idTemp);
        webservice_layer1Customer_48id.setId(id_55idTemp);
        String id_56id=  request.getParameter("id167");
        int id_56idTemp  = Integer.parseInt(id_56id);
        %>
        <jsp:useBean id="webservice_layer1Job_44id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_44id.setStartDate(startDate_45idTemp);
        webservice_layer1Job_44id.setAddress(address_46idTemp);
        webservice_layer1Job_44id.setEndDate(endDate_47idTemp);
        webservice_layer1Job_44id.setCustomer(webservice_layer1Customer_48id);
        webservice_layer1Job_44id.setId(id_56idTemp);
        java.lang.String updateJob140mtemp = sampleJobWebserviceProxyid.updateJob(webservice_layer1Job_44id);
if(updateJob140mtemp == null){
%>
<%=updateJob140mtemp %>
<%
}else{
        String tempResultreturnp141 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateJob140mtemp));
        %>
        <%= tempResultreturnp141 %>
        <%
}
break;
case 169:
        gotMethod = true;
        String customerId_57id=  request.getParameter("customerId172");
        int customerId_57idTemp  = Integer.parseInt(customerId_57id);
        webservice_layer.Job[] findCustomerJobArray169mtemp = sampleJobWebserviceProxyid.findCustomerJobArray(customerId_57idTemp);
if(findCustomerJobArray169mtemp == null){
%>
<%=findCustomerJobArray169mtemp %>
<%
}else{
        String tempreturnp170 = null;
        if(findCustomerJobArray169mtemp != null){
        java.util.List listreturnp170= java.util.Arrays.asList(findCustomerJobArray169mtemp);
        tempreturnp170 = listreturnp170.toString();
        }
        %>
        <%=tempreturnp170%>
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