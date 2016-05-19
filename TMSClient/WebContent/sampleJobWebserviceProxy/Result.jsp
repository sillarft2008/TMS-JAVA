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
        webservice_layer.Job[] findJobArray18mtemp = sampleJobWebserviceProxyid.findJobArray();
if(findJobArray18mtemp == null){
%>
<%=findJobArray18mtemp %>
<%
}else{
        String tempreturnp19 = null;
        if(findJobArray18mtemp != null){
        java.util.List listreturnp19= java.util.Arrays.asList(findJobArray18mtemp);
        tempreturnp19 = listreturnp19.toString();
        }
        %>
        <%=tempreturnp19%>
        <%
}
break;
case 21:
        gotMethod = true;
        String startDate_3id=  request.getParameter("startDate26");
            java.util.Calendar startDate_3idTemp = null;
        if(!startDate_3id.equals("")){
        java.text.DateFormat dateFormatstartDate26 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate26  = dateFormatstartDate26.parse(startDate_3id);
         startDate_3idTemp = new java.util.GregorianCalendar();
        startDate_3idTemp.setTime(dateTempstartDate26);
        }
        String address_4id=  request.getParameter("address28");
            java.lang.String address_4idTemp = null;
        if(!address_4id.equals("")){
         address_4idTemp  = address_4id;
        }
        String endDate_5id=  request.getParameter("endDate30");
            java.util.Calendar endDate_5idTemp = null;
        if(!endDate_5id.equals("")){
        java.text.DateFormat dateFormatendDate30 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate30  = dateFormatendDate30.parse(endDate_5id);
         endDate_5idTemp = new java.util.GregorianCalendar();
        endDate_5idTemp.setTime(dateTempendDate30);
        }
        String telefone_7id=  request.getParameter("telefone34");
            java.lang.String telefone_7idTemp = null;
        if(!telefone_7id.equals("")){
         telefone_7idTemp  = telefone_7id;
        }
        String cvr_8id=  request.getParameter("cvr36");
        int cvr_8idTemp  = Integer.parseInt(cvr_8id);
        String address_9id=  request.getParameter("address38");
            java.lang.String address_9idTemp = null;
        if(!address_9id.equals("")){
         address_9idTemp  = address_9id;
        }
        String lastName_10id=  request.getParameter("lastName40");
            java.lang.String lastName_10idTemp = null;
        if(!lastName_10id.equals("")){
         lastName_10idTemp  = lastName_10id;
        }
        String firstName_11id=  request.getParameter("firstName42");
            java.lang.String firstName_11idTemp = null;
        if(!firstName_11id.equals("")){
         firstName_11idTemp  = firstName_11id;
        }
        String companyName_12id=  request.getParameter("companyName44");
            java.lang.String companyName_12idTemp = null;
        if(!companyName_12id.equals("")){
         companyName_12idTemp  = companyName_12id;
        }
        String id_13id=  request.getParameter("id46");
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
        String id_14id=  request.getParameter("id48");
        int id_14idTemp  = Integer.parseInt(id_14id);
        %>
        <jsp:useBean id="webservice_layer1Job_2id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_2id.setStartDate(startDate_3idTemp);
        webservice_layer1Job_2id.setAddress(address_4idTemp);
        webservice_layer1Job_2id.setEndDate(endDate_5idTemp);
        webservice_layer1Job_2id.setCustomer(webservice_layer1Customer_6id);
        webservice_layer1Job_2id.setId(id_14idTemp);
        String competency_16id=  request.getParameter("competency52");
            java.lang.String competency_16idTemp = null;
        if(!competency_16id.equals("")){
         competency_16idTemp  = competency_16id;
        }
        String id_17id=  request.getParameter("id54");
        int id_17idTemp  = Integer.parseInt(id_17id);
        %>
        <jsp:useBean id="webservice_layer1Competency_15id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_15id.setCompetency(competency_16idTemp);
        webservice_layer1Competency_15id.setId(id_17idTemp);
        sampleJobWebserviceProxyid.addCompetency(webservice_layer1Job_2id,webservice_layer1Competency_15id);
break;
case 56:
        gotMethod = true;
        String jobId_18id=  request.getParameter("jobId85");
        int jobId_18idTemp  = Integer.parseInt(jobId_18id);
        webservice_layer.Job findJob56mtemp = sampleJobWebserviceProxyid.findJob(jobId_18idTemp);
if(findJob56mtemp == null){
%>
<%=findJob56mtemp %>
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
if(findJob56mtemp != null){
java.util.Calendar typestartDate59 = findJob56mtemp.getStartDate();
        java.text.DateFormat dateFormatstartDate59 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate59 = typestartDate59.getTime();
        String tempResultstartDate59 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate59.format(datestartDate59));
        %>
        <%= tempResultstartDate59 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findJob56mtemp != null){
java.lang.String typeaddress61 = findJob56mtemp.getAddress();
        String tempResultaddress61 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress61));
        %>
        <%= tempResultaddress61 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">arrayOFCompetency:</TD>
<TD>
<%
if(findJob56mtemp != null){
webservice_layer.Competency[] typearrayOFCompetency63 = findJob56mtemp.getArrayOFCompetency();
        String temparrayOFCompetency63 = null;
        if(typearrayOFCompetency63 != null){
        java.util.List listarrayOFCompetency63= java.util.Arrays.asList(typearrayOFCompetency63);
        temparrayOFCompetency63 = listarrayOFCompetency63.toString();
        }
        %>
        <%=temparrayOFCompetency63%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findJob56mtemp != null){
java.util.Calendar typeendDate65 = findJob56mtemp.getEndDate();
        java.text.DateFormat dateFormatendDate65 = java.text.DateFormat.getDateInstance();
        java.util.Date dateendDate65 = typeendDate65.getTime();
        String tempResultendDate65 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatendDate65.format(dateendDate65));
        %>
        <%= tempResultendDate65 %>
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
if(findJob56mtemp != null){
webservice_layer.Customer tebece0=findJob56mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typetelefone69 = tebece0.getTelefone();
        String tempResulttelefone69 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone69));
        %>
        <%= tempResulttelefone69 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findJob56mtemp != null){
webservice_layer.Customer tebece0=findJob56mtemp.getCustomer();
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
if(findJob56mtemp != null){
webservice_layer.Customer tebece0=findJob56mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typeaddress73 = tebece0.getAddress();
        String tempResultaddress73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress73));
        %>
        <%= tempResultaddress73 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findJob56mtemp != null){
webservice_layer.Customer tebece0=findJob56mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typelastName75 = tebece0.getLastName();
        String tempResultlastName75 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName75));
        %>
        <%= tempResultlastName75 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findJob56mtemp != null){
webservice_layer.Customer tebece0=findJob56mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typefirstName77 = tebece0.getFirstName();
        String tempResultfirstName77 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName77));
        %>
        <%= tempResultfirstName77 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findJob56mtemp != null){
webservice_layer.Customer tebece0=findJob56mtemp.getCustomer();
if(tebece0 != null){
java.lang.String typecompanyName79 = tebece0.getCompanyName();
        String tempResultcompanyName79 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName79));
        %>
        <%= tempResultcompanyName79 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findJob56mtemp != null){
webservice_layer.Customer tebece0=findJob56mtemp.getCustomer();
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
if(findJob56mtemp != null){
%>
<%=findJob56mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 87:
        gotMethod = true;
        String startDate_20id=  request.getParameter("startDate92");
            java.util.Calendar startDate_20idTemp = null;
        if(!startDate_20id.equals("")){
        java.text.DateFormat dateFormatstartDate92 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate92  = dateFormatstartDate92.parse(startDate_20id);
         startDate_20idTemp = new java.util.GregorianCalendar();
        startDate_20idTemp.setTime(dateTempstartDate92);
        }
        String address_21id=  request.getParameter("address94");
            java.lang.String address_21idTemp = null;
        if(!address_21id.equals("")){
         address_21idTemp  = address_21id;
        }
        String endDate_22id=  request.getParameter("endDate96");
            java.util.Calendar endDate_22idTemp = null;
        if(!endDate_22id.equals("")){
        java.text.DateFormat dateFormatendDate96 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate96  = dateFormatendDate96.parse(endDate_22id);
         endDate_22idTemp = new java.util.GregorianCalendar();
        endDate_22idTemp.setTime(dateTempendDate96);
        }
        String telefone_24id=  request.getParameter("telefone100");
            java.lang.String telefone_24idTemp = null;
        if(!telefone_24id.equals("")){
         telefone_24idTemp  = telefone_24id;
        }
        String cvr_25id=  request.getParameter("cvr102");
        int cvr_25idTemp  = Integer.parseInt(cvr_25id);
        String address_26id=  request.getParameter("address104");
            java.lang.String address_26idTemp = null;
        if(!address_26id.equals("")){
         address_26idTemp  = address_26id;
        }
        String lastName_27id=  request.getParameter("lastName106");
            java.lang.String lastName_27idTemp = null;
        if(!lastName_27id.equals("")){
         lastName_27idTemp  = lastName_27id;
        }
        String firstName_28id=  request.getParameter("firstName108");
            java.lang.String firstName_28idTemp = null;
        if(!firstName_28id.equals("")){
         firstName_28idTemp  = firstName_28id;
        }
        String companyName_29id=  request.getParameter("companyName110");
            java.lang.String companyName_29idTemp = null;
        if(!companyName_29id.equals("")){
         companyName_29idTemp  = companyName_29id;
        }
        String id_30id=  request.getParameter("id112");
        int id_30idTemp  = Integer.parseInt(id_30id);
        %>
        <jsp:useBean id="webservice_layer1Customer_23id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_23id.setTelefone(telefone_24idTemp);
        webservice_layer1Customer_23id.setCvr(cvr_25idTemp);
        webservice_layer1Customer_23id.setAddress(address_26idTemp);
        webservice_layer1Customer_23id.setLastName(lastName_27idTemp);
        webservice_layer1Customer_23id.setFirstName(firstName_28idTemp);
        webservice_layer1Customer_23id.setCompanyName(companyName_29idTemp);
        webservice_layer1Customer_23id.setId(id_30idTemp);
        String id_31id=  request.getParameter("id114");
        int id_31idTemp  = Integer.parseInt(id_31id);
        %>
        <jsp:useBean id="webservice_layer1Job_19id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_19id.setStartDate(startDate_20idTemp);
        webservice_layer1Job_19id.setAddress(address_21idTemp);
        webservice_layer1Job_19id.setEndDate(endDate_22idTemp);
        webservice_layer1Job_19id.setCustomer(webservice_layer1Customer_23id);
        webservice_layer1Job_19id.setId(id_31idTemp);
        sampleJobWebserviceProxyid.createJob(webservice_layer1Job_19id);
break;
case 116:
        gotMethod = true;
        String startDate_33id=  request.getParameter("startDate121");
            java.util.Calendar startDate_33idTemp = null;
        if(!startDate_33id.equals("")){
        java.text.DateFormat dateFormatstartDate121 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate121  = dateFormatstartDate121.parse(startDate_33id);
         startDate_33idTemp = new java.util.GregorianCalendar();
        startDate_33idTemp.setTime(dateTempstartDate121);
        }
        String address_34id=  request.getParameter("address123");
            java.lang.String address_34idTemp = null;
        if(!address_34id.equals("")){
         address_34idTemp  = address_34id;
        }
        String endDate_35id=  request.getParameter("endDate125");
            java.util.Calendar endDate_35idTemp = null;
        if(!endDate_35id.equals("")){
        java.text.DateFormat dateFormatendDate125 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate125  = dateFormatendDate125.parse(endDate_35id);
         endDate_35idTemp = new java.util.GregorianCalendar();
        endDate_35idTemp.setTime(dateTempendDate125);
        }
        String telefone_37id=  request.getParameter("telefone129");
            java.lang.String telefone_37idTemp = null;
        if(!telefone_37id.equals("")){
         telefone_37idTemp  = telefone_37id;
        }
        String cvr_38id=  request.getParameter("cvr131");
        int cvr_38idTemp  = Integer.parseInt(cvr_38id);
        String address_39id=  request.getParameter("address133");
            java.lang.String address_39idTemp = null;
        if(!address_39id.equals("")){
         address_39idTemp  = address_39id;
        }
        String lastName_40id=  request.getParameter("lastName135");
            java.lang.String lastName_40idTemp = null;
        if(!lastName_40id.equals("")){
         lastName_40idTemp  = lastName_40id;
        }
        String firstName_41id=  request.getParameter("firstName137");
            java.lang.String firstName_41idTemp = null;
        if(!firstName_41id.equals("")){
         firstName_41idTemp  = firstName_41id;
        }
        String companyName_42id=  request.getParameter("companyName139");
            java.lang.String companyName_42idTemp = null;
        if(!companyName_42id.equals("")){
         companyName_42idTemp  = companyName_42id;
        }
        String id_43id=  request.getParameter("id141");
        int id_43idTemp  = Integer.parseInt(id_43id);
        %>
        <jsp:useBean id="webservice_layer1Customer_36id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_36id.setTelefone(telefone_37idTemp);
        webservice_layer1Customer_36id.setCvr(cvr_38idTemp);
        webservice_layer1Customer_36id.setAddress(address_39idTemp);
        webservice_layer1Customer_36id.setLastName(lastName_40idTemp);
        webservice_layer1Customer_36id.setFirstName(firstName_41idTemp);
        webservice_layer1Customer_36id.setCompanyName(companyName_42idTemp);
        webservice_layer1Customer_36id.setId(id_43idTemp);
        String id_44id=  request.getParameter("id143");
        int id_44idTemp  = Integer.parseInt(id_44id);
        %>
        <jsp:useBean id="webservice_layer1Job_32id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_32id.setStartDate(startDate_33idTemp);
        webservice_layer1Job_32id.setAddress(address_34idTemp);
        webservice_layer1Job_32id.setEndDate(endDate_35idTemp);
        webservice_layer1Job_32id.setCustomer(webservice_layer1Customer_36id);
        webservice_layer1Job_32id.setId(id_44idTemp);
        java.lang.String deleteJob116mtemp = sampleJobWebserviceProxyid.deleteJob(webservice_layer1Job_32id);
if(deleteJob116mtemp == null){
%>
<%=deleteJob116mtemp %>
<%
}else{
        String tempResultreturnp117 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteJob116mtemp));
        %>
        <%= tempResultreturnp117 %>
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
        java.lang.String updateJob145mtemp = sampleJobWebserviceProxyid.updateJob(webservice_layer1Job_45id);
if(updateJob145mtemp == null){
%>
<%=updateJob145mtemp %>
<%
}else{
        String tempResultreturnp146 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateJob145mtemp));
        %>
        <%= tempResultreturnp146 %>
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