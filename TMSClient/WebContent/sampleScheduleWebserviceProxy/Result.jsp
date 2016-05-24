<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleScheduleWebserviceProxyid" scope="session" class="webservice_layer.ScheduleWebserviceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleScheduleWebserviceProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleScheduleWebserviceProxyid.getEndpoint();
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
        sampleScheduleWebserviceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webservice_layer.ScheduleWebservice getScheduleWebservice10mtemp = sampleScheduleWebserviceProxyid.getScheduleWebservice();
if(getScheduleWebservice10mtemp == null){
%>
<%=getScheduleWebservice10mtemp %>
<%
}else{
        if(getScheduleWebservice10mtemp!= null){
        String tempreturnp11 = getScheduleWebservice10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String startTimeString_2id=  request.getParameter("startTimeString18");
            java.lang.String startTimeString_2idTemp = null;
        if(!startTimeString_2id.equals("")){
         startTimeString_2idTemp  = startTimeString_2id;
        }
        String id_3id=  request.getParameter("id20");
        int id_3idTemp  = Integer.parseInt(id_3id);
        String startDate_5id=  request.getParameter("startDate24");
            java.util.Calendar startDate_5idTemp = null;
        if(!startDate_5id.equals("")){
        java.text.DateFormat dateFormatstartDate24 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate24  = dateFormatstartDate24.parse(startDate_5id);
         startDate_5idTemp = new java.util.GregorianCalendar();
        startDate_5idTemp.setTime(dateTempstartDate24);
        }
        String address_6id=  request.getParameter("address26");
            java.lang.String address_6idTemp = null;
        if(!address_6id.equals("")){
         address_6idTemp  = address_6id;
        }
        String endDate_7id=  request.getParameter("endDate28");
            java.util.Calendar endDate_7idTemp = null;
        if(!endDate_7id.equals("")){
        java.text.DateFormat dateFormatendDate28 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate28  = dateFormatendDate28.parse(endDate_7id);
         endDate_7idTemp = new java.util.GregorianCalendar();
        endDate_7idTemp.setTime(dateTempendDate28);
        }
        String telefone_9id=  request.getParameter("telefone32");
            java.lang.String telefone_9idTemp = null;
        if(!telefone_9id.equals("")){
         telefone_9idTemp  = telefone_9id;
        }
        String cvr_10id=  request.getParameter("cvr34");
        int cvr_10idTemp  = Integer.parseInt(cvr_10id);
        String address_11id=  request.getParameter("address36");
            java.lang.String address_11idTemp = null;
        if(!address_11id.equals("")){
         address_11idTemp  = address_11id;
        }
        String lastName_12id=  request.getParameter("lastName38");
            java.lang.String lastName_12idTemp = null;
        if(!lastName_12id.equals("")){
         lastName_12idTemp  = lastName_12id;
        }
        String firstName_13id=  request.getParameter("firstName40");
            java.lang.String firstName_13idTemp = null;
        if(!firstName_13id.equals("")){
         firstName_13idTemp  = firstName_13id;
        }
        String companyName_14id=  request.getParameter("companyName42");
            java.lang.String companyName_14idTemp = null;
        if(!companyName_14id.equals("")){
         companyName_14idTemp  = companyName_14id;
        }
        String id_15id=  request.getParameter("id44");
        int id_15idTemp  = Integer.parseInt(id_15id);
        %>
        <jsp:useBean id="webservice_layer1Customer_8id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_8id.setTelefone(telefone_9idTemp);
        webservice_layer1Customer_8id.setCvr(cvr_10idTemp);
        webservice_layer1Customer_8id.setAddress(address_11idTemp);
        webservice_layer1Customer_8id.setLastName(lastName_12idTemp);
        webservice_layer1Customer_8id.setFirstName(firstName_13idTemp);
        webservice_layer1Customer_8id.setCompanyName(companyName_14idTemp);
        webservice_layer1Customer_8id.setId(id_15idTemp);
        String id_16id=  request.getParameter("id46");
        int id_16idTemp  = Integer.parseInt(id_16id);
        %>
        <jsp:useBean id="webservice_layer1Job_4id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_4id.setStartDate(startDate_5idTemp);
        webservice_layer1Job_4id.setAddress(address_6idTemp);
        webservice_layer1Job_4id.setEndDate(endDate_7idTemp);
        webservice_layer1Job_4id.setCustomer(webservice_layer1Customer_8id);
        webservice_layer1Job_4id.setId(id_16idTemp);
        String duration_17id=  request.getParameter("duration48");
            java.util.Calendar duration_17idTemp = null;
        if(!duration_17id.equals("")){
        java.text.DateFormat dateFormatduration48 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration48  = dateFormatduration48.parse(duration_17id);
         duration_17idTemp = new java.util.GregorianCalendar();
        duration_17idTemp.setTime(dateTempduration48);
        }
        String startTimeDate_18id=  request.getParameter("startTimeDate50");
            java.util.Calendar startTimeDate_18idTemp = null;
        if(!startTimeDate_18id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate50 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate50  = dateFormatstartTimeDate50.parse(startTimeDate_18id);
         startTimeDate_18idTemp = new java.util.GregorianCalendar();
        startTimeDate_18idTemp.setTime(dateTempstartTimeDate50);
        }
        String competency_20id=  request.getParameter("competency54");
            java.lang.String competency_20idTemp = null;
        if(!competency_20id.equals("")){
         competency_20idTemp  = competency_20id;
        }
        String id_21id=  request.getParameter("id56");
        int id_21idTemp  = Integer.parseInt(id_21id);
        %>
        <jsp:useBean id="webservice_layer1Competency_19id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_19id.setCompetency(competency_20idTemp);
        webservice_layer1Competency_19id.setId(id_21idTemp);
        String startTimeDateString_22id=  request.getParameter("startTimeDateString58");
            java.lang.String startTimeDateString_22idTemp = null;
        if(!startTimeDateString_22id.equals("")){
         startTimeDateString_22idTemp  = startTimeDateString_22id;
        }
        String telefone_24id=  request.getParameter("telefone62");
            java.lang.String telefone_24idTemp = null;
        if(!telefone_24id.equals("")){
         telefone_24idTemp  = telefone_24id;
        }
        String address_25id=  request.getParameter("address64");
            java.lang.String address_25idTemp = null;
        if(!address_25id.equals("")){
         address_25idTemp  = address_25id;
        }
        String lastName_26id=  request.getParameter("lastName66");
            java.lang.String lastName_26idTemp = null;
        if(!lastName_26id.equals("")){
         lastName_26idTemp  = lastName_26id;
        }
        String email_27id=  request.getParameter("email68");
            java.lang.String email_27idTemp = null;
        if(!email_27id.equals("")){
         email_27idTemp  = email_27id;
        }
        String birthdate_28id=  request.getParameter("birthdate70");
            java.lang.String birthdate_28idTemp = null;
        if(!birthdate_28id.equals("")){
         birthdate_28idTemp  = birthdate_28id;
        }
        String firstName_29id=  request.getParameter("firstName72");
            java.lang.String firstName_29idTemp = null;
        if(!firstName_29id.equals("")){
         firstName_29idTemp  = firstName_29id;
        }
        String id_30id=  request.getParameter("id74");
        int id_30idTemp  = Integer.parseInt(id_30id);
        %>
        <jsp:useBean id="webservice_layer1Employee_23id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_23id.setTelefone(telefone_24idTemp);
        webservice_layer1Employee_23id.setAddress(address_25idTemp);
        webservice_layer1Employee_23id.setLastName(lastName_26idTemp);
        webservice_layer1Employee_23id.setEmail(email_27idTemp);
        webservice_layer1Employee_23id.setBirthdate(birthdate_28idTemp);
        webservice_layer1Employee_23id.setFirstName(firstName_29idTemp);
        webservice_layer1Employee_23id.setId(id_30idTemp);
        String qantity_32id=  request.getParameter("qantity78");
            java.lang.String qantity_32idTemp = null;
        if(!qantity_32id.equals("")){
         qantity_32idTemp  = qantity_32id;
        }
        String product_34id=  request.getParameter("product82");
            java.lang.String product_34idTemp = null;
        if(!product_34id.equals("")){
         product_34idTemp  = product_34id;
        }
        String id_35id=  request.getParameter("id84");
        int id_35idTemp  = Integer.parseInt(id_35id);
        %>
        <jsp:useBean id="webservice_layer1Product_33id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_33id.setProduct(product_34idTemp);
        webservice_layer1Product_33id.setId(id_35idTemp);
        String id_36id=  request.getParameter("id86");
        int id_36idTemp  = Integer.parseInt(id_36id);
        %>
        <jsp:useBean id="webservice_layer1Item_31id" scope="session" class="webservice_layer.Item" />
        <%
        webservice_layer1Item_31id.setQantity(qantity_32idTemp);
        webservice_layer1Item_31id.setProduct(webservice_layer1Product_33id);
        webservice_layer1Item_31id.setId(id_36idTemp);
        %>
        <jsp:useBean id="webservice_layer1Schedule_1id" scope="session" class="webservice_layer.Schedule" />
        <%
        webservice_layer1Schedule_1id.setStartTimeString(startTimeString_2idTemp);
        webservice_layer1Schedule_1id.setId(id_3idTemp);
        webservice_layer1Schedule_1id.setJob(webservice_layer1Job_4id);
        webservice_layer1Schedule_1id.setDuration(duration_17idTemp);
        webservice_layer1Schedule_1id.setStartTimeDate(startTimeDate_18idTemp);
        webservice_layer1Schedule_1id.setCompetency(webservice_layer1Competency_19id);
        webservice_layer1Schedule_1id.setStartTimeDateString(startTimeDateString_22idTemp);
        webservice_layer1Schedule_1id.setEmployee(webservice_layer1Employee_23id);
        webservice_layer1Schedule_1id.setItem(webservice_layer1Item_31id);
        java.lang.String deleteSchedule13mtemp = sampleScheduleWebserviceProxyid.deleteSchedule(webservice_layer1Schedule_1id);
if(deleteSchedule13mtemp == null){
%>
<%=deleteSchedule13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteSchedule13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 88:
        gotMethod = true;
        String startTimeString_38id=  request.getParameter("startTimeString93");
            java.lang.String startTimeString_38idTemp = null;
        if(!startTimeString_38id.equals("")){
         startTimeString_38idTemp  = startTimeString_38id;
        }
        String id_39id=  request.getParameter("id95");
        int id_39idTemp  = Integer.parseInt(id_39id);
        String startDate_41id=  request.getParameter("startDate99");
            java.util.Calendar startDate_41idTemp = null;
        if(!startDate_41id.equals("")){
        java.text.DateFormat dateFormatstartDate99 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate99  = dateFormatstartDate99.parse(startDate_41id);
         startDate_41idTemp = new java.util.GregorianCalendar();
        startDate_41idTemp.setTime(dateTempstartDate99);
        }
        String address_42id=  request.getParameter("address101");
            java.lang.String address_42idTemp = null;
        if(!address_42id.equals("")){
         address_42idTemp  = address_42id;
        }
        String endDate_43id=  request.getParameter("endDate103");
            java.util.Calendar endDate_43idTemp = null;
        if(!endDate_43id.equals("")){
        java.text.DateFormat dateFormatendDate103 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate103  = dateFormatendDate103.parse(endDate_43id);
         endDate_43idTemp = new java.util.GregorianCalendar();
        endDate_43idTemp.setTime(dateTempendDate103);
        }
        String telefone_45id=  request.getParameter("telefone107");
            java.lang.String telefone_45idTemp = null;
        if(!telefone_45id.equals("")){
         telefone_45idTemp  = telefone_45id;
        }
        String cvr_46id=  request.getParameter("cvr109");
        int cvr_46idTemp  = Integer.parseInt(cvr_46id);
        String address_47id=  request.getParameter("address111");
            java.lang.String address_47idTemp = null;
        if(!address_47id.equals("")){
         address_47idTemp  = address_47id;
        }
        String lastName_48id=  request.getParameter("lastName113");
            java.lang.String lastName_48idTemp = null;
        if(!lastName_48id.equals("")){
         lastName_48idTemp  = lastName_48id;
        }
        String firstName_49id=  request.getParameter("firstName115");
            java.lang.String firstName_49idTemp = null;
        if(!firstName_49id.equals("")){
         firstName_49idTemp  = firstName_49id;
        }
        String companyName_50id=  request.getParameter("companyName117");
            java.lang.String companyName_50idTemp = null;
        if(!companyName_50id.equals("")){
         companyName_50idTemp  = companyName_50id;
        }
        String id_51id=  request.getParameter("id119");
        int id_51idTemp  = Integer.parseInt(id_51id);
        %>
        <jsp:useBean id="webservice_layer1Customer_44id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_44id.setTelefone(telefone_45idTemp);
        webservice_layer1Customer_44id.setCvr(cvr_46idTemp);
        webservice_layer1Customer_44id.setAddress(address_47idTemp);
        webservice_layer1Customer_44id.setLastName(lastName_48idTemp);
        webservice_layer1Customer_44id.setFirstName(firstName_49idTemp);
        webservice_layer1Customer_44id.setCompanyName(companyName_50idTemp);
        webservice_layer1Customer_44id.setId(id_51idTemp);
        String id_52id=  request.getParameter("id121");
        int id_52idTemp  = Integer.parseInt(id_52id);
        %>
        <jsp:useBean id="webservice_layer1Job_40id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_40id.setStartDate(startDate_41idTemp);
        webservice_layer1Job_40id.setAddress(address_42idTemp);
        webservice_layer1Job_40id.setEndDate(endDate_43idTemp);
        webservice_layer1Job_40id.setCustomer(webservice_layer1Customer_44id);
        webservice_layer1Job_40id.setId(id_52idTemp);
        String duration_53id=  request.getParameter("duration123");
            java.util.Calendar duration_53idTemp = null;
        if(!duration_53id.equals("")){
        java.text.DateFormat dateFormatduration123 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration123  = dateFormatduration123.parse(duration_53id);
         duration_53idTemp = new java.util.GregorianCalendar();
        duration_53idTemp.setTime(dateTempduration123);
        }
        String startTimeDate_54id=  request.getParameter("startTimeDate125");
            java.util.Calendar startTimeDate_54idTemp = null;
        if(!startTimeDate_54id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate125 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate125  = dateFormatstartTimeDate125.parse(startTimeDate_54id);
         startTimeDate_54idTemp = new java.util.GregorianCalendar();
        startTimeDate_54idTemp.setTime(dateTempstartTimeDate125);
        }
        String competency_56id=  request.getParameter("competency129");
            java.lang.String competency_56idTemp = null;
        if(!competency_56id.equals("")){
         competency_56idTemp  = competency_56id;
        }
        String id_57id=  request.getParameter("id131");
        int id_57idTemp  = Integer.parseInt(id_57id);
        %>
        <jsp:useBean id="webservice_layer1Competency_55id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_55id.setCompetency(competency_56idTemp);
        webservice_layer1Competency_55id.setId(id_57idTemp);
        String startTimeDateString_58id=  request.getParameter("startTimeDateString133");
            java.lang.String startTimeDateString_58idTemp = null;
        if(!startTimeDateString_58id.equals("")){
         startTimeDateString_58idTemp  = startTimeDateString_58id;
        }
        String telefone_60id=  request.getParameter("telefone137");
            java.lang.String telefone_60idTemp = null;
        if(!telefone_60id.equals("")){
         telefone_60idTemp  = telefone_60id;
        }
        String address_61id=  request.getParameter("address139");
            java.lang.String address_61idTemp = null;
        if(!address_61id.equals("")){
         address_61idTemp  = address_61id;
        }
        String lastName_62id=  request.getParameter("lastName141");
            java.lang.String lastName_62idTemp = null;
        if(!lastName_62id.equals("")){
         lastName_62idTemp  = lastName_62id;
        }
        String email_63id=  request.getParameter("email143");
            java.lang.String email_63idTemp = null;
        if(!email_63id.equals("")){
         email_63idTemp  = email_63id;
        }
        String birthdate_64id=  request.getParameter("birthdate145");
            java.lang.String birthdate_64idTemp = null;
        if(!birthdate_64id.equals("")){
         birthdate_64idTemp  = birthdate_64id;
        }
        String firstName_65id=  request.getParameter("firstName147");
            java.lang.String firstName_65idTemp = null;
        if(!firstName_65id.equals("")){
         firstName_65idTemp  = firstName_65id;
        }
        String id_66id=  request.getParameter("id149");
        int id_66idTemp  = Integer.parseInt(id_66id);
        %>
        <jsp:useBean id="webservice_layer1Employee_59id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_59id.setTelefone(telefone_60idTemp);
        webservice_layer1Employee_59id.setAddress(address_61idTemp);
        webservice_layer1Employee_59id.setLastName(lastName_62idTemp);
        webservice_layer1Employee_59id.setEmail(email_63idTemp);
        webservice_layer1Employee_59id.setBirthdate(birthdate_64idTemp);
        webservice_layer1Employee_59id.setFirstName(firstName_65idTemp);
        webservice_layer1Employee_59id.setId(id_66idTemp);
        String qantity_68id=  request.getParameter("qantity153");
            java.lang.String qantity_68idTemp = null;
        if(!qantity_68id.equals("")){
         qantity_68idTemp  = qantity_68id;
        }
        String product_70id=  request.getParameter("product157");
            java.lang.String product_70idTemp = null;
        if(!product_70id.equals("")){
         product_70idTemp  = product_70id;
        }
        String id_71id=  request.getParameter("id159");
        int id_71idTemp  = Integer.parseInt(id_71id);
        %>
        <jsp:useBean id="webservice_layer1Product_69id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_69id.setProduct(product_70idTemp);
        webservice_layer1Product_69id.setId(id_71idTemp);
        String id_72id=  request.getParameter("id161");
        int id_72idTemp  = Integer.parseInt(id_72id);
        %>
        <jsp:useBean id="webservice_layer1Item_67id" scope="session" class="webservice_layer.Item" />
        <%
        webservice_layer1Item_67id.setQantity(qantity_68idTemp);
        webservice_layer1Item_67id.setProduct(webservice_layer1Product_69id);
        webservice_layer1Item_67id.setId(id_72idTemp);
        %>
        <jsp:useBean id="webservice_layer1Schedule_37id" scope="session" class="webservice_layer.Schedule" />
        <%
        webservice_layer1Schedule_37id.setStartTimeString(startTimeString_38idTemp);
        webservice_layer1Schedule_37id.setId(id_39idTemp);
        webservice_layer1Schedule_37id.setJob(webservice_layer1Job_40id);
        webservice_layer1Schedule_37id.setDuration(duration_53idTemp);
        webservice_layer1Schedule_37id.setStartTimeDate(startTimeDate_54idTemp);
        webservice_layer1Schedule_37id.setCompetency(webservice_layer1Competency_55id);
        webservice_layer1Schedule_37id.setStartTimeDateString(startTimeDateString_58idTemp);
        webservice_layer1Schedule_37id.setEmployee(webservice_layer1Employee_59id);
        webservice_layer1Schedule_37id.setItem(webservice_layer1Item_67id);
        java.lang.String updateSchedule88mtemp = sampleScheduleWebserviceProxyid.updateSchedule(webservice_layer1Schedule_37id);
if(updateSchedule88mtemp == null){
%>
<%=updateSchedule88mtemp %>
<%
}else{
        String tempResultreturnp89 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateSchedule88mtemp));
        %>
        <%= tempResultreturnp89 %>
        <%
}
break;
case 163:
        gotMethod = true;
        String scheduleId_73id=  request.getParameter("scheduleId238");
        int scheduleId_73idTemp  = Integer.parseInt(scheduleId_73id);
        webservice_layer.Schedule findSchedule163mtemp = sampleScheduleWebserviceProxyid.findSchedule(scheduleId_73idTemp);
if(findSchedule163mtemp == null){
%>
<%=findSchedule163mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeString:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
java.lang.String typestartTimeString166 = findSchedule163mtemp.getStartTimeString();
        String tempResultstartTimeString166 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartTimeString166));
        %>
        <%= tempResultstartTimeString166 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
%>
<%=findSchedule163mtemp.getId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">job:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
java.util.Calendar typestartDate172 = tebece0.getStartDate();
        java.text.DateFormat dateFormatstartDate172 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate172 = typestartDate172.getTime();
        String tempResultstartDate172 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate172.format(datestartDate172));
        %>
        <%= tempResultstartDate172 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
java.lang.String typeaddress174 = tebece0.getAddress();
        String tempResultaddress174 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress174));
        %>
        <%= tempResultaddress174 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">arrayOFCompetency:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
webservice_layer.Competency[] typearrayOFCompetency176 = tebece0.getArrayOFCompetency();
        String temparrayOFCompetency176 = null;
        if(typearrayOFCompetency176 != null){
        java.util.List listarrayOFCompetency176= java.util.Arrays.asList(typearrayOFCompetency176);
        temparrayOFCompetency176 = listarrayOFCompetency176.toString();
        }
        %>
        <%=temparrayOFCompetency176%>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
java.util.Calendar typeendDate178 = tebece0.getEndDate();
        java.text.DateFormat dateFormatendDate178 = java.text.DateFormat.getDateInstance();
        java.util.Date dateendDate178 = typeendDate178.getTime();
        String tempResultendDate178 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatendDate178.format(dateendDate178));
        %>
        <%= tempResultendDate178 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">customer:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">telefone:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typetelefone182 = tebece1.getTelefone();
        String tempResulttelefone182 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone182));
        %>
        <%= tempResulttelefone182 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">cvr:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
%>
<%=tebece1.getCvr()
%><%}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typeaddress186 = tebece1.getAddress();
        String tempResultaddress186 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress186));
        %>
        <%= tempResultaddress186 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typelastName188 = tebece1.getLastName();
        String tempResultlastName188 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName188));
        %>
        <%= tempResultlastName188 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typefirstName190 = tebece1.getFirstName();
        String tempResultfirstName190 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName190));
        %>
        <%= tempResultfirstName190 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">companyName:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typecompanyName192 = tebece1.getCompanyName();
        String tempResultcompanyName192 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName192));
        %>
        <%= tempResultcompanyName192 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
%>
<%=tebece1.getId()
%><%}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Job tebece0=findSchedule163mtemp.getJob();
if(tebece0 != null){
%>
<%=tebece0.getId()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duration:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
java.util.Calendar typeduration198 = findSchedule163mtemp.getDuration();
        java.text.DateFormat dateFormatduration198 = java.text.DateFormat.getDateInstance();
        java.util.Date dateduration198 = typeduration198.getTime();
        String tempResultduration198 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatduration198.format(dateduration198));
        %>
        <%= tempResultduration198 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDate:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
java.util.Calendar typestartTimeDate200 = findSchedule163mtemp.getStartTimeDate();
        java.text.DateFormat dateFormatstartTimeDate200 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartTimeDate200 = typestartTimeDate200.getTime();
        String tempResultstartTimeDate200 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartTimeDate200.format(datestartTimeDate200));
        %>
        <%= tempResultstartTimeDate200 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">competency:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">competency:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Competency tebece0=findSchedule163mtemp.getCompetency();
if(tebece0 != null){
java.lang.String typecompetency204 = tebece0.getCompetency();
        String tempResultcompetency204 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompetency204));
        %>
        <%= tempResultcompetency204 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Competency tebece0=findSchedule163mtemp.getCompetency();
if(tebece0 != null){
%>
<%=tebece0.getId()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDateString:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
java.lang.String typestartTimeDateString208 = findSchedule163mtemp.getStartTimeDateString();
        String tempResultstartTimeDateString208 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartTimeDateString208));
        %>
        <%= tempResultstartTimeDateString208 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">employee:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">telefone:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Employee tebece0=findSchedule163mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typetelefone212 = tebece0.getTelefone();
        String tempResulttelefone212 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone212));
        %>
        <%= tempResulttelefone212 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Employee tebece0=findSchedule163mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typeaddress214 = tebece0.getAddress();
        String tempResultaddress214 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress214));
        %>
        <%= tempResultaddress214 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Employee tebece0=findSchedule163mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typelastName216 = tebece0.getLastName();
        String tempResultlastName216 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName216));
        %>
        <%= tempResultlastName216 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Employee tebece0=findSchedule163mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typeemail218 = tebece0.getEmail();
        String tempResultemail218 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail218));
        %>
        <%= tempResultemail218 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">birthdate:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Employee tebece0=findSchedule163mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typebirthdate220 = tebece0.getBirthdate();
        String tempResultbirthdate220 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebirthdate220));
        %>
        <%= tempResultbirthdate220 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Employee tebece0=findSchedule163mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typefirstName222 = tebece0.getFirstName();
        String tempResultfirstName222 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName222));
        %>
        <%= tempResultfirstName222 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Employee tebece0=findSchedule163mtemp.getEmployee();
if(tebece0 != null){
%>
<%=tebece0.getId()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">item:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">qantity:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Item tebece0=findSchedule163mtemp.getItem();
if(tebece0 != null){
java.lang.String typeqantity228 = tebece0.getQantity();
        String tempResultqantity228 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeqantity228));
        %>
        <%= tempResultqantity228 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">product:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">product:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Item tebece0=findSchedule163mtemp.getItem();
if(tebece0 != null){
webservice_layer.Product tebece1=tebece0.getProduct();
if(tebece1 != null){
java.lang.String typeproduct232 = tebece1.getProduct();
        String tempResultproduct232 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeproduct232));
        %>
        <%= tempResultproduct232 %>
        <%
}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="0" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Item tebece0=findSchedule163mtemp.getItem();
if(tebece0 != null){
webservice_layer.Product tebece1=tebece0.getProduct();
if(tebece1 != null){
%>
<%=tebece1.getId()
%><%}}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule163mtemp != null){
webservice_layer.Item tebece0=findSchedule163mtemp.getItem();
if(tebece0 != null){
%>
<%=tebece0.getId()
%><%}}%>
</TD>
</TABLE>
<%
}
break;
case 240:
        gotMethod = true;
        String startTimeString_75id=  request.getParameter("startTimeString245");
            java.lang.String startTimeString_75idTemp = null;
        if(!startTimeString_75id.equals("")){
         startTimeString_75idTemp  = startTimeString_75id;
        }
        String id_76id=  request.getParameter("id247");
        int id_76idTemp  = Integer.parseInt(id_76id);
        String startDate_78id=  request.getParameter("startDate251");
            java.util.Calendar startDate_78idTemp = null;
        if(!startDate_78id.equals("")){
        java.text.DateFormat dateFormatstartDate251 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate251  = dateFormatstartDate251.parse(startDate_78id);
         startDate_78idTemp = new java.util.GregorianCalendar();
        startDate_78idTemp.setTime(dateTempstartDate251);
        }
        String address_79id=  request.getParameter("address253");
            java.lang.String address_79idTemp = null;
        if(!address_79id.equals("")){
         address_79idTemp  = address_79id;
        }
        String endDate_80id=  request.getParameter("endDate255");
            java.util.Calendar endDate_80idTemp = null;
        if(!endDate_80id.equals("")){
        java.text.DateFormat dateFormatendDate255 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate255  = dateFormatendDate255.parse(endDate_80id);
         endDate_80idTemp = new java.util.GregorianCalendar();
        endDate_80idTemp.setTime(dateTempendDate255);
        }
        String telefone_82id=  request.getParameter("telefone259");
            java.lang.String telefone_82idTemp = null;
        if(!telefone_82id.equals("")){
         telefone_82idTemp  = telefone_82id;
        }
        String cvr_83id=  request.getParameter("cvr261");
        int cvr_83idTemp  = Integer.parseInt(cvr_83id);
        String address_84id=  request.getParameter("address263");
            java.lang.String address_84idTemp = null;
        if(!address_84id.equals("")){
         address_84idTemp  = address_84id;
        }
        String lastName_85id=  request.getParameter("lastName265");
            java.lang.String lastName_85idTemp = null;
        if(!lastName_85id.equals("")){
         lastName_85idTemp  = lastName_85id;
        }
        String firstName_86id=  request.getParameter("firstName267");
            java.lang.String firstName_86idTemp = null;
        if(!firstName_86id.equals("")){
         firstName_86idTemp  = firstName_86id;
        }
        String companyName_87id=  request.getParameter("companyName269");
            java.lang.String companyName_87idTemp = null;
        if(!companyName_87id.equals("")){
         companyName_87idTemp  = companyName_87id;
        }
        String id_88id=  request.getParameter("id271");
        int id_88idTemp  = Integer.parseInt(id_88id);
        %>
        <jsp:useBean id="webservice_layer1Customer_81id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_81id.setTelefone(telefone_82idTemp);
        webservice_layer1Customer_81id.setCvr(cvr_83idTemp);
        webservice_layer1Customer_81id.setAddress(address_84idTemp);
        webservice_layer1Customer_81id.setLastName(lastName_85idTemp);
        webservice_layer1Customer_81id.setFirstName(firstName_86idTemp);
        webservice_layer1Customer_81id.setCompanyName(companyName_87idTemp);
        webservice_layer1Customer_81id.setId(id_88idTemp);
        String id_89id=  request.getParameter("id273");
        int id_89idTemp  = Integer.parseInt(id_89id);
        %>
        <jsp:useBean id="webservice_layer1Job_77id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_77id.setStartDate(startDate_78idTemp);
        webservice_layer1Job_77id.setAddress(address_79idTemp);
        webservice_layer1Job_77id.setEndDate(endDate_80idTemp);
        webservice_layer1Job_77id.setCustomer(webservice_layer1Customer_81id);
        webservice_layer1Job_77id.setId(id_89idTemp);
        String duration_90id=  request.getParameter("duration275");
            java.util.Calendar duration_90idTemp = null;
        if(!duration_90id.equals("")){
        java.text.DateFormat dateFormatduration275 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration275  = dateFormatduration275.parse(duration_90id);
         duration_90idTemp = new java.util.GregorianCalendar();
        duration_90idTemp.setTime(dateTempduration275);
        }
        String startTimeDate_91id=  request.getParameter("startTimeDate277");
            java.util.Calendar startTimeDate_91idTemp = null;
        if(!startTimeDate_91id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate277 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate277  = dateFormatstartTimeDate277.parse(startTimeDate_91id);
         startTimeDate_91idTemp = new java.util.GregorianCalendar();
        startTimeDate_91idTemp.setTime(dateTempstartTimeDate277);
        }
        String competency_93id=  request.getParameter("competency281");
            java.lang.String competency_93idTemp = null;
        if(!competency_93id.equals("")){
         competency_93idTemp  = competency_93id;
        }
        String id_94id=  request.getParameter("id283");
        int id_94idTemp  = Integer.parseInt(id_94id);
        %>
        <jsp:useBean id="webservice_layer1Competency_92id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_92id.setCompetency(competency_93idTemp);
        webservice_layer1Competency_92id.setId(id_94idTemp);
        String startTimeDateString_95id=  request.getParameter("startTimeDateString285");
            java.lang.String startTimeDateString_95idTemp = null;
        if(!startTimeDateString_95id.equals("")){
         startTimeDateString_95idTemp  = startTimeDateString_95id;
        }
        String telefone_97id=  request.getParameter("telefone289");
            java.lang.String telefone_97idTemp = null;
        if(!telefone_97id.equals("")){
         telefone_97idTemp  = telefone_97id;
        }
        String address_98id=  request.getParameter("address291");
            java.lang.String address_98idTemp = null;
        if(!address_98id.equals("")){
         address_98idTemp  = address_98id;
        }
        String lastName_99id=  request.getParameter("lastName293");
            java.lang.String lastName_99idTemp = null;
        if(!lastName_99id.equals("")){
         lastName_99idTemp  = lastName_99id;
        }
        String email_100id=  request.getParameter("email295");
            java.lang.String email_100idTemp = null;
        if(!email_100id.equals("")){
         email_100idTemp  = email_100id;
        }
        String birthdate_101id=  request.getParameter("birthdate297");
            java.lang.String birthdate_101idTemp = null;
        if(!birthdate_101id.equals("")){
         birthdate_101idTemp  = birthdate_101id;
        }
        String firstName_102id=  request.getParameter("firstName299");
            java.lang.String firstName_102idTemp = null;
        if(!firstName_102id.equals("")){
         firstName_102idTemp  = firstName_102id;
        }
        String id_103id=  request.getParameter("id301");
        int id_103idTemp  = Integer.parseInt(id_103id);
        %>
        <jsp:useBean id="webservice_layer1Employee_96id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_96id.setTelefone(telefone_97idTemp);
        webservice_layer1Employee_96id.setAddress(address_98idTemp);
        webservice_layer1Employee_96id.setLastName(lastName_99idTemp);
        webservice_layer1Employee_96id.setEmail(email_100idTemp);
        webservice_layer1Employee_96id.setBirthdate(birthdate_101idTemp);
        webservice_layer1Employee_96id.setFirstName(firstName_102idTemp);
        webservice_layer1Employee_96id.setId(id_103idTemp);
        String qantity_105id=  request.getParameter("qantity305");
            java.lang.String qantity_105idTemp = null;
        if(!qantity_105id.equals("")){
         qantity_105idTemp  = qantity_105id;
        }
        String product_107id=  request.getParameter("product309");
            java.lang.String product_107idTemp = null;
        if(!product_107id.equals("")){
         product_107idTemp  = product_107id;
        }
        String id_108id=  request.getParameter("id311");
        int id_108idTemp  = Integer.parseInt(id_108id);
        %>
        <jsp:useBean id="webservice_layer1Product_106id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_106id.setProduct(product_107idTemp);
        webservice_layer1Product_106id.setId(id_108idTemp);
        String id_109id=  request.getParameter("id313");
        int id_109idTemp  = Integer.parseInt(id_109id);
        %>
        <jsp:useBean id="webservice_layer1Item_104id" scope="session" class="webservice_layer.Item" />
        <%
        webservice_layer1Item_104id.setQantity(qantity_105idTemp);
        webservice_layer1Item_104id.setProduct(webservice_layer1Product_106id);
        webservice_layer1Item_104id.setId(id_109idTemp);
        %>
        <jsp:useBean id="webservice_layer1Schedule_74id" scope="session" class="webservice_layer.Schedule" />
        <%
        webservice_layer1Schedule_74id.setStartTimeString(startTimeString_75idTemp);
        webservice_layer1Schedule_74id.setId(id_76idTemp);
        webservice_layer1Schedule_74id.setJob(webservice_layer1Job_77id);
        webservice_layer1Schedule_74id.setDuration(duration_90idTemp);
        webservice_layer1Schedule_74id.setStartTimeDate(startTimeDate_91idTemp);
        webservice_layer1Schedule_74id.setCompetency(webservice_layer1Competency_92id);
        webservice_layer1Schedule_74id.setStartTimeDateString(startTimeDateString_95idTemp);
        webservice_layer1Schedule_74id.setEmployee(webservice_layer1Employee_96id);
        webservice_layer1Schedule_74id.setItem(webservice_layer1Item_104id);
        sampleScheduleWebserviceProxyid.createSchedule(webservice_layer1Schedule_74id);
break;
case 315:
        gotMethod = true;
        String employeeId_110id=  request.getParameter("employeeId318");
        int employeeId_110idTemp  = Integer.parseInt(employeeId_110id);
        String startTimeDate_111id=  request.getParameter("startTimeDate320");
            java.util.Calendar startTimeDate_111idTemp = null;
        if(!startTimeDate_111id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate320 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate320  = dateFormatstartTimeDate320.parse(startTimeDate_111id);
         startTimeDate_111idTemp = new java.util.GregorianCalendar();
        startTimeDate_111idTemp.setTime(dateTempstartTimeDate320);
        }
        webservice_layer.Schedule[] findScheduleArrayByEmployeeDate315mtemp = sampleScheduleWebserviceProxyid.findScheduleArrayByEmployeeDate(employeeId_110idTemp,startTimeDate_111idTemp);
if(findScheduleArrayByEmployeeDate315mtemp == null){
%>
<%=findScheduleArrayByEmployeeDate315mtemp %>
<%
}else{
        String tempreturnp316 = null;
        if(findScheduleArrayByEmployeeDate315mtemp != null){
        java.util.List listreturnp316= java.util.Arrays.asList(findScheduleArrayByEmployeeDate315mtemp);
        tempreturnp316 = listreturnp316.toString();
        }
        %>
        <%=tempreturnp316%>
        <%
}
break;
case 322:
        gotMethod = true;
        webservice_layer.Schedule[] findScheduleArray322mtemp = sampleScheduleWebserviceProxyid.findScheduleArray();
if(findScheduleArray322mtemp == null){
%>
<%=findScheduleArray322mtemp %>
<%
}else{
        String tempreturnp323 = null;
        if(findScheduleArray322mtemp != null){
        java.util.List listreturnp323= java.util.Arrays.asList(findScheduleArray322mtemp);
        tempreturnp323 = listreturnp323.toString();
        }
        %>
        <%=tempreturnp323%>
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