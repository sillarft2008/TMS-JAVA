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
        String scheduleId_1id=  request.getParameter("scheduleId86");
        int scheduleId_1idTemp  = Integer.parseInt(scheduleId_1id);
        webservice_layer.Schedule findSchedule13mtemp = sampleScheduleWebserviceProxyid.findSchedule(scheduleId_1idTemp);
if(findSchedule13mtemp == null){
%>
<%=findSchedule13mtemp %>
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
if(findSchedule13mtemp != null){
java.lang.String typestartTimeString16 = findSchedule13mtemp.getStartTimeString();
        String tempResultstartTimeString16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartTimeString16));
        %>
        <%= tempResultstartTimeString16 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
%>
<%=findSchedule13mtemp.getId()
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
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
if(tebece0 != null){
java.util.Calendar typestartDate22 = tebece0.getStartDate();
        java.text.DateFormat dateFormatstartDate22 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate22 = typestartDate22.getTime();
        String tempResultstartDate22 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate22.format(datestartDate22));
        %>
        <%= tempResultstartDate22 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
if(tebece0 != null){
java.lang.String typeaddress24 = tebece0.getAddress();
        String tempResultaddress24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress24));
        %>
        <%= tempResultaddress24 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
if(tebece0 != null){
java.util.Calendar typeendDate26 = tebece0.getEndDate();
        java.text.DateFormat dateFormatendDate26 = java.text.DateFormat.getDateInstance();
        java.util.Date dateendDate26 = typeendDate26.getTime();
        String tempResultendDate26 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatendDate26.format(dateendDate26));
        %>
        <%= tempResultendDate26 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typetelefone30 = tebece1.getTelefone();
        String tempResulttelefone30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone30));
        %>
        <%= tempResulttelefone30 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
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
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typeaddress34 = tebece1.getAddress();
        String tempResultaddress34 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress34));
        %>
        <%= tempResultaddress34 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typelastName36 = tebece1.getLastName();
        String tempResultlastName36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName36));
        %>
        <%= tempResultlastName36 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typefirstName38 = tebece1.getFirstName();
        String tempResultfirstName38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName38));
        %>
        <%= tempResultfirstName38 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typecompanyName40 = tebece1.getCompanyName();
        String tempResultcompanyName40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName40));
        %>
        <%= tempResultcompanyName40 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
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
if(findSchedule13mtemp != null){
webservice_layer.Job tebece0=findSchedule13mtemp.getJob();
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
if(findSchedule13mtemp != null){
java.util.Calendar typeduration46 = findSchedule13mtemp.getDuration();
        java.text.DateFormat dateFormatduration46 = java.text.DateFormat.getDateInstance();
        java.util.Date dateduration46 = typeduration46.getTime();
        String tempResultduration46 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatduration46.format(dateduration46));
        %>
        <%= tempResultduration46 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDate:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
java.util.Calendar typestartTimeDate48 = findSchedule13mtemp.getStartTimeDate();
        java.text.DateFormat dateFormatstartTimeDate48 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartTimeDate48 = typestartTimeDate48.getTime();
        String tempResultstartTimeDate48 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartTimeDate48.format(datestartTimeDate48));
        %>
        <%= tempResultstartTimeDate48 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Competency tebece0=findSchedule13mtemp.getCompetency();
if(tebece0 != null){
java.lang.String typecompetency52 = tebece0.getCompetency();
        String tempResultcompetency52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompetency52));
        %>
        <%= tempResultcompetency52 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
webservice_layer.Competency tebece0=findSchedule13mtemp.getCompetency();
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
if(findSchedule13mtemp != null){
java.lang.String typestartTimeDateString56 = findSchedule13mtemp.getStartTimeDateString();
        String tempResultstartTimeDateString56 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartTimeDateString56));
        %>
        <%= tempResultstartTimeDateString56 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Employee tebece0=findSchedule13mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typetelefone60 = tebece0.getTelefone();
        String tempResulttelefone60 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone60));
        %>
        <%= tempResulttelefone60 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
webservice_layer.Employee tebece0=findSchedule13mtemp.getEmployee();
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
if(findSchedule13mtemp != null){
webservice_layer.Employee tebece0=findSchedule13mtemp.getEmployee();
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
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
webservice_layer.Employee tebece0=findSchedule13mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typeemail66 = tebece0.getEmail();
        String tempResultemail66 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail66));
        %>
        <%= tempResultemail66 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">birthdate:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
webservice_layer.Employee tebece0=findSchedule13mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typebirthdate68 = tebece0.getBirthdate();
        String tempResultbirthdate68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebirthdate68));
        %>
        <%= tempResultbirthdate68 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
webservice_layer.Employee tebece0=findSchedule13mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typefirstName70 = tebece0.getFirstName();
        String tempResultfirstName70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName70));
        %>
        <%= tempResultfirstName70 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule13mtemp != null){
webservice_layer.Employee tebece0=findSchedule13mtemp.getEmployee();
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
if(findSchedule13mtemp != null){
webservice_layer.Item tebece0=findSchedule13mtemp.getItem();
if(tebece0 != null){
java.lang.String typeqantity76 = tebece0.getQantity();
        String tempResultqantity76 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeqantity76));
        %>
        <%= tempResultqantity76 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Item tebece0=findSchedule13mtemp.getItem();
if(tebece0 != null){
webservice_layer.Product tebece1=tebece0.getProduct();
if(tebece1 != null){
java.lang.String typeproduct80 = tebece1.getProduct();
        String tempResultproduct80 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeproduct80));
        %>
        <%= tempResultproduct80 %>
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
if(findSchedule13mtemp != null){
webservice_layer.Item tebece0=findSchedule13mtemp.getItem();
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
if(findSchedule13mtemp != null){
webservice_layer.Item tebece0=findSchedule13mtemp.getItem();
if(tebece0 != null){
%>
<%=tebece0.getId()
%><%}}%>
</TD>
</TABLE>
<%
}
break;
case 88:
        gotMethod = true;
        String startTimeString_3id=  request.getParameter("startTimeString93");
            java.lang.String startTimeString_3idTemp = null;
        if(!startTimeString_3id.equals("")){
         startTimeString_3idTemp  = startTimeString_3id;
        }
        String id_4id=  request.getParameter("id95");
        int id_4idTemp  = Integer.parseInt(id_4id);
        String startDate_6id=  request.getParameter("startDate99");
            java.util.Calendar startDate_6idTemp = null;
        if(!startDate_6id.equals("")){
        java.text.DateFormat dateFormatstartDate99 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate99  = dateFormatstartDate99.parse(startDate_6id);
         startDate_6idTemp = new java.util.GregorianCalendar();
        startDate_6idTemp.setTime(dateTempstartDate99);
        }
        String address_7id=  request.getParameter("address101");
            java.lang.String address_7idTemp = null;
        if(!address_7id.equals("")){
         address_7idTemp  = address_7id;
        }
        String endDate_8id=  request.getParameter("endDate103");
            java.util.Calendar endDate_8idTemp = null;
        if(!endDate_8id.equals("")){
        java.text.DateFormat dateFormatendDate103 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate103  = dateFormatendDate103.parse(endDate_8id);
         endDate_8idTemp = new java.util.GregorianCalendar();
        endDate_8idTemp.setTime(dateTempendDate103);
        }
        String telefone_10id=  request.getParameter("telefone107");
            java.lang.String telefone_10idTemp = null;
        if(!telefone_10id.equals("")){
         telefone_10idTemp  = telefone_10id;
        }
        String cvr_11id=  request.getParameter("cvr109");
        int cvr_11idTemp  = Integer.parseInt(cvr_11id);
        String address_12id=  request.getParameter("address111");
            java.lang.String address_12idTemp = null;
        if(!address_12id.equals("")){
         address_12idTemp  = address_12id;
        }
        String lastName_13id=  request.getParameter("lastName113");
            java.lang.String lastName_13idTemp = null;
        if(!lastName_13id.equals("")){
         lastName_13idTemp  = lastName_13id;
        }
        String firstName_14id=  request.getParameter("firstName115");
            java.lang.String firstName_14idTemp = null;
        if(!firstName_14id.equals("")){
         firstName_14idTemp  = firstName_14id;
        }
        String companyName_15id=  request.getParameter("companyName117");
            java.lang.String companyName_15idTemp = null;
        if(!companyName_15id.equals("")){
         companyName_15idTemp  = companyName_15id;
        }
        String id_16id=  request.getParameter("id119");
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
        String id_17id=  request.getParameter("id121");
        int id_17idTemp  = Integer.parseInt(id_17id);
        %>
        <jsp:useBean id="webservice_layer1Job_5id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_5id.setStartDate(startDate_6idTemp);
        webservice_layer1Job_5id.setAddress(address_7idTemp);
        webservice_layer1Job_5id.setEndDate(endDate_8idTemp);
        webservice_layer1Job_5id.setCustomer(webservice_layer1Customer_9id);
        webservice_layer1Job_5id.setId(id_17idTemp);
        String duration_18id=  request.getParameter("duration123");
            java.util.Calendar duration_18idTemp = null;
        if(!duration_18id.equals("")){
        java.text.DateFormat dateFormatduration123 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration123  = dateFormatduration123.parse(duration_18id);
         duration_18idTemp = new java.util.GregorianCalendar();
        duration_18idTemp.setTime(dateTempduration123);
        }
        String startTimeDate_19id=  request.getParameter("startTimeDate125");
            java.util.Calendar startTimeDate_19idTemp = null;
        if(!startTimeDate_19id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate125 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate125  = dateFormatstartTimeDate125.parse(startTimeDate_19id);
         startTimeDate_19idTemp = new java.util.GregorianCalendar();
        startTimeDate_19idTemp.setTime(dateTempstartTimeDate125);
        }
        String competency_21id=  request.getParameter("competency129");
            java.lang.String competency_21idTemp = null;
        if(!competency_21id.equals("")){
         competency_21idTemp  = competency_21id;
        }
        String id_22id=  request.getParameter("id131");
        int id_22idTemp  = Integer.parseInt(id_22id);
        %>
        <jsp:useBean id="webservice_layer1Competency_20id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_20id.setCompetency(competency_21idTemp);
        webservice_layer1Competency_20id.setId(id_22idTemp);
        String startTimeDateString_23id=  request.getParameter("startTimeDateString133");
            java.lang.String startTimeDateString_23idTemp = null;
        if(!startTimeDateString_23id.equals("")){
         startTimeDateString_23idTemp  = startTimeDateString_23id;
        }
        String telefone_25id=  request.getParameter("telefone137");
            java.lang.String telefone_25idTemp = null;
        if(!telefone_25id.equals("")){
         telefone_25idTemp  = telefone_25id;
        }
        String address_26id=  request.getParameter("address139");
            java.lang.String address_26idTemp = null;
        if(!address_26id.equals("")){
         address_26idTemp  = address_26id;
        }
        String lastName_27id=  request.getParameter("lastName141");
            java.lang.String lastName_27idTemp = null;
        if(!lastName_27id.equals("")){
         lastName_27idTemp  = lastName_27id;
        }
        String email_28id=  request.getParameter("email143");
            java.lang.String email_28idTemp = null;
        if(!email_28id.equals("")){
         email_28idTemp  = email_28id;
        }
        String birthdate_29id=  request.getParameter("birthdate145");
            java.lang.String birthdate_29idTemp = null;
        if(!birthdate_29id.equals("")){
         birthdate_29idTemp  = birthdate_29id;
        }
        String firstName_30id=  request.getParameter("firstName147");
            java.lang.String firstName_30idTemp = null;
        if(!firstName_30id.equals("")){
         firstName_30idTemp  = firstName_30id;
        }
        String id_31id=  request.getParameter("id149");
        int id_31idTemp  = Integer.parseInt(id_31id);
        %>
        <jsp:useBean id="webservice_layer1Employee_24id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_24id.setTelefone(telefone_25idTemp);
        webservice_layer1Employee_24id.setAddress(address_26idTemp);
        webservice_layer1Employee_24id.setLastName(lastName_27idTemp);
        webservice_layer1Employee_24id.setEmail(email_28idTemp);
        webservice_layer1Employee_24id.setBirthdate(birthdate_29idTemp);
        webservice_layer1Employee_24id.setFirstName(firstName_30idTemp);
        webservice_layer1Employee_24id.setId(id_31idTemp);
        String qantity_33id=  request.getParameter("qantity153");
            java.lang.String qantity_33idTemp = null;
        if(!qantity_33id.equals("")){
         qantity_33idTemp  = qantity_33id;
        }
        String product_35id=  request.getParameter("product157");
            java.lang.String product_35idTemp = null;
        if(!product_35id.equals("")){
         product_35idTemp  = product_35id;
        }
        String id_36id=  request.getParameter("id159");
        int id_36idTemp  = Integer.parseInt(id_36id);
        %>
        <jsp:useBean id="webservice_layer1Product_34id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_34id.setProduct(product_35idTemp);
        webservice_layer1Product_34id.setId(id_36idTemp);
        String id_37id=  request.getParameter("id161");
        int id_37idTemp  = Integer.parseInt(id_37id);
        %>
        <jsp:useBean id="webservice_layer1Item_32id" scope="session" class="webservice_layer.Item" />
        <%
        webservice_layer1Item_32id.setQantity(qantity_33idTemp);
        webservice_layer1Item_32id.setProduct(webservice_layer1Product_34id);
        webservice_layer1Item_32id.setId(id_37idTemp);
        %>
        <jsp:useBean id="webservice_layer1Schedule_2id" scope="session" class="webservice_layer.Schedule" />
        <%
        webservice_layer1Schedule_2id.setStartTimeString(startTimeString_3idTemp);
        webservice_layer1Schedule_2id.setId(id_4idTemp);
        webservice_layer1Schedule_2id.setJob(webservice_layer1Job_5id);
        webservice_layer1Schedule_2id.setDuration(duration_18idTemp);
        webservice_layer1Schedule_2id.setStartTimeDate(startTimeDate_19idTemp);
        webservice_layer1Schedule_2id.setCompetency(webservice_layer1Competency_20id);
        webservice_layer1Schedule_2id.setStartTimeDateString(startTimeDateString_23idTemp);
        webservice_layer1Schedule_2id.setEmployee(webservice_layer1Employee_24id);
        webservice_layer1Schedule_2id.setItem(webservice_layer1Item_32id);
        sampleScheduleWebserviceProxyid.createSchedule(webservice_layer1Schedule_2id);
break;
case 163:
        gotMethod = true;
        String startTimeString_39id=  request.getParameter("startTimeString168");
            java.lang.String startTimeString_39idTemp = null;
        if(!startTimeString_39id.equals("")){
         startTimeString_39idTemp  = startTimeString_39id;
        }
        String id_40id=  request.getParameter("id170");
        int id_40idTemp  = Integer.parseInt(id_40id);
        String startDate_42id=  request.getParameter("startDate174");
            java.util.Calendar startDate_42idTemp = null;
        if(!startDate_42id.equals("")){
        java.text.DateFormat dateFormatstartDate174 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate174  = dateFormatstartDate174.parse(startDate_42id);
         startDate_42idTemp = new java.util.GregorianCalendar();
        startDate_42idTemp.setTime(dateTempstartDate174);
        }
        String address_43id=  request.getParameter("address176");
            java.lang.String address_43idTemp = null;
        if(!address_43id.equals("")){
         address_43idTemp  = address_43id;
        }
        String endDate_44id=  request.getParameter("endDate178");
            java.util.Calendar endDate_44idTemp = null;
        if(!endDate_44id.equals("")){
        java.text.DateFormat dateFormatendDate178 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate178  = dateFormatendDate178.parse(endDate_44id);
         endDate_44idTemp = new java.util.GregorianCalendar();
        endDate_44idTemp.setTime(dateTempendDate178);
        }
        String telefone_46id=  request.getParameter("telefone182");
            java.lang.String telefone_46idTemp = null;
        if(!telefone_46id.equals("")){
         telefone_46idTemp  = telefone_46id;
        }
        String cvr_47id=  request.getParameter("cvr184");
        int cvr_47idTemp  = Integer.parseInt(cvr_47id);
        String address_48id=  request.getParameter("address186");
            java.lang.String address_48idTemp = null;
        if(!address_48id.equals("")){
         address_48idTemp  = address_48id;
        }
        String lastName_49id=  request.getParameter("lastName188");
            java.lang.String lastName_49idTemp = null;
        if(!lastName_49id.equals("")){
         lastName_49idTemp  = lastName_49id;
        }
        String firstName_50id=  request.getParameter("firstName190");
            java.lang.String firstName_50idTemp = null;
        if(!firstName_50id.equals("")){
         firstName_50idTemp  = firstName_50id;
        }
        String companyName_51id=  request.getParameter("companyName192");
            java.lang.String companyName_51idTemp = null;
        if(!companyName_51id.equals("")){
         companyName_51idTemp  = companyName_51id;
        }
        String id_52id=  request.getParameter("id194");
        int id_52idTemp  = Integer.parseInt(id_52id);
        %>
        <jsp:useBean id="webservice_layer1Customer_45id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_45id.setTelefone(telefone_46idTemp);
        webservice_layer1Customer_45id.setCvr(cvr_47idTemp);
        webservice_layer1Customer_45id.setAddress(address_48idTemp);
        webservice_layer1Customer_45id.setLastName(lastName_49idTemp);
        webservice_layer1Customer_45id.setFirstName(firstName_50idTemp);
        webservice_layer1Customer_45id.setCompanyName(companyName_51idTemp);
        webservice_layer1Customer_45id.setId(id_52idTemp);
        String id_53id=  request.getParameter("id196");
        int id_53idTemp  = Integer.parseInt(id_53id);
        %>
        <jsp:useBean id="webservice_layer1Job_41id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_41id.setStartDate(startDate_42idTemp);
        webservice_layer1Job_41id.setAddress(address_43idTemp);
        webservice_layer1Job_41id.setEndDate(endDate_44idTemp);
        webservice_layer1Job_41id.setCustomer(webservice_layer1Customer_45id);
        webservice_layer1Job_41id.setId(id_53idTemp);
        String duration_54id=  request.getParameter("duration198");
            java.util.Calendar duration_54idTemp = null;
        if(!duration_54id.equals("")){
        java.text.DateFormat dateFormatduration198 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration198  = dateFormatduration198.parse(duration_54id);
         duration_54idTemp = new java.util.GregorianCalendar();
        duration_54idTemp.setTime(dateTempduration198);
        }
        String startTimeDate_55id=  request.getParameter("startTimeDate200");
            java.util.Calendar startTimeDate_55idTemp = null;
        if(!startTimeDate_55id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate200 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate200  = dateFormatstartTimeDate200.parse(startTimeDate_55id);
         startTimeDate_55idTemp = new java.util.GregorianCalendar();
        startTimeDate_55idTemp.setTime(dateTempstartTimeDate200);
        }
        String competency_57id=  request.getParameter("competency204");
            java.lang.String competency_57idTemp = null;
        if(!competency_57id.equals("")){
         competency_57idTemp  = competency_57id;
        }
        String id_58id=  request.getParameter("id206");
        int id_58idTemp  = Integer.parseInt(id_58id);
        %>
        <jsp:useBean id="webservice_layer1Competency_56id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_56id.setCompetency(competency_57idTemp);
        webservice_layer1Competency_56id.setId(id_58idTemp);
        String startTimeDateString_59id=  request.getParameter("startTimeDateString208");
            java.lang.String startTimeDateString_59idTemp = null;
        if(!startTimeDateString_59id.equals("")){
         startTimeDateString_59idTemp  = startTimeDateString_59id;
        }
        String telefone_61id=  request.getParameter("telefone212");
            java.lang.String telefone_61idTemp = null;
        if(!telefone_61id.equals("")){
         telefone_61idTemp  = telefone_61id;
        }
        String address_62id=  request.getParameter("address214");
            java.lang.String address_62idTemp = null;
        if(!address_62id.equals("")){
         address_62idTemp  = address_62id;
        }
        String lastName_63id=  request.getParameter("lastName216");
            java.lang.String lastName_63idTemp = null;
        if(!lastName_63id.equals("")){
         lastName_63idTemp  = lastName_63id;
        }
        String email_64id=  request.getParameter("email218");
            java.lang.String email_64idTemp = null;
        if(!email_64id.equals("")){
         email_64idTemp  = email_64id;
        }
        String birthdate_65id=  request.getParameter("birthdate220");
            java.lang.String birthdate_65idTemp = null;
        if(!birthdate_65id.equals("")){
         birthdate_65idTemp  = birthdate_65id;
        }
        String firstName_66id=  request.getParameter("firstName222");
            java.lang.String firstName_66idTemp = null;
        if(!firstName_66id.equals("")){
         firstName_66idTemp  = firstName_66id;
        }
        String id_67id=  request.getParameter("id224");
        int id_67idTemp  = Integer.parseInt(id_67id);
        %>
        <jsp:useBean id="webservice_layer1Employee_60id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_60id.setTelefone(telefone_61idTemp);
        webservice_layer1Employee_60id.setAddress(address_62idTemp);
        webservice_layer1Employee_60id.setLastName(lastName_63idTemp);
        webservice_layer1Employee_60id.setEmail(email_64idTemp);
        webservice_layer1Employee_60id.setBirthdate(birthdate_65idTemp);
        webservice_layer1Employee_60id.setFirstName(firstName_66idTemp);
        webservice_layer1Employee_60id.setId(id_67idTemp);
        String qantity_69id=  request.getParameter("qantity228");
            java.lang.String qantity_69idTemp = null;
        if(!qantity_69id.equals("")){
         qantity_69idTemp  = qantity_69id;
        }
        String product_71id=  request.getParameter("product232");
            java.lang.String product_71idTemp = null;
        if(!product_71id.equals("")){
         product_71idTemp  = product_71id;
        }
        String id_72id=  request.getParameter("id234");
        int id_72idTemp  = Integer.parseInt(id_72id);
        %>
        <jsp:useBean id="webservice_layer1Product_70id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_70id.setProduct(product_71idTemp);
        webservice_layer1Product_70id.setId(id_72idTemp);
        String id_73id=  request.getParameter("id236");
        int id_73idTemp  = Integer.parseInt(id_73id);
        %>
        <jsp:useBean id="webservice_layer1Item_68id" scope="session" class="webservice_layer.Item" />
        <%
        webservice_layer1Item_68id.setQantity(qantity_69idTemp);
        webservice_layer1Item_68id.setProduct(webservice_layer1Product_70id);
        webservice_layer1Item_68id.setId(id_73idTemp);
        %>
        <jsp:useBean id="webservice_layer1Schedule_38id" scope="session" class="webservice_layer.Schedule" />
        <%
        webservice_layer1Schedule_38id.setStartTimeString(startTimeString_39idTemp);
        webservice_layer1Schedule_38id.setId(id_40idTemp);
        webservice_layer1Schedule_38id.setJob(webservice_layer1Job_41id);
        webservice_layer1Schedule_38id.setDuration(duration_54idTemp);
        webservice_layer1Schedule_38id.setStartTimeDate(startTimeDate_55idTemp);
        webservice_layer1Schedule_38id.setCompetency(webservice_layer1Competency_56id);
        webservice_layer1Schedule_38id.setStartTimeDateString(startTimeDateString_59idTemp);
        webservice_layer1Schedule_38id.setEmployee(webservice_layer1Employee_60id);
        webservice_layer1Schedule_38id.setItem(webservice_layer1Item_68id);
        java.lang.String updateSchedule163mtemp = sampleScheduleWebserviceProxyid.updateSchedule(webservice_layer1Schedule_38id);
if(updateSchedule163mtemp == null){
%>
<%=updateSchedule163mtemp %>
<%
}else{
        String tempResultreturnp164 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateSchedule163mtemp));
        %>
        <%= tempResultreturnp164 %>
        <%
}
break;
case 238:
        gotMethod = true;
        String startTimeString_75id=  request.getParameter("startTimeString243");
            java.lang.String startTimeString_75idTemp = null;
        if(!startTimeString_75id.equals("")){
         startTimeString_75idTemp  = startTimeString_75id;
        }
        String id_76id=  request.getParameter("id245");
        int id_76idTemp  = Integer.parseInt(id_76id);
        String startDate_78id=  request.getParameter("startDate249");
            java.util.Calendar startDate_78idTemp = null;
        if(!startDate_78id.equals("")){
        java.text.DateFormat dateFormatstartDate249 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate249  = dateFormatstartDate249.parse(startDate_78id);
         startDate_78idTemp = new java.util.GregorianCalendar();
        startDate_78idTemp.setTime(dateTempstartDate249);
        }
        String address_79id=  request.getParameter("address251");
            java.lang.String address_79idTemp = null;
        if(!address_79id.equals("")){
         address_79idTemp  = address_79id;
        }
        String endDate_80id=  request.getParameter("endDate253");
            java.util.Calendar endDate_80idTemp = null;
        if(!endDate_80id.equals("")){
        java.text.DateFormat dateFormatendDate253 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate253  = dateFormatendDate253.parse(endDate_80id);
         endDate_80idTemp = new java.util.GregorianCalendar();
        endDate_80idTemp.setTime(dateTempendDate253);
        }
        String telefone_82id=  request.getParameter("telefone257");
            java.lang.String telefone_82idTemp = null;
        if(!telefone_82id.equals("")){
         telefone_82idTemp  = telefone_82id;
        }
        String cvr_83id=  request.getParameter("cvr259");
        int cvr_83idTemp  = Integer.parseInt(cvr_83id);
        String address_84id=  request.getParameter("address261");
            java.lang.String address_84idTemp = null;
        if(!address_84id.equals("")){
         address_84idTemp  = address_84id;
        }
        String lastName_85id=  request.getParameter("lastName263");
            java.lang.String lastName_85idTemp = null;
        if(!lastName_85id.equals("")){
         lastName_85idTemp  = lastName_85id;
        }
        String firstName_86id=  request.getParameter("firstName265");
            java.lang.String firstName_86idTemp = null;
        if(!firstName_86id.equals("")){
         firstName_86idTemp  = firstName_86id;
        }
        String companyName_87id=  request.getParameter("companyName267");
            java.lang.String companyName_87idTemp = null;
        if(!companyName_87id.equals("")){
         companyName_87idTemp  = companyName_87id;
        }
        String id_88id=  request.getParameter("id269");
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
        String id_89id=  request.getParameter("id271");
        int id_89idTemp  = Integer.parseInt(id_89id);
        %>
        <jsp:useBean id="webservice_layer1Job_77id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_77id.setStartDate(startDate_78idTemp);
        webservice_layer1Job_77id.setAddress(address_79idTemp);
        webservice_layer1Job_77id.setEndDate(endDate_80idTemp);
        webservice_layer1Job_77id.setCustomer(webservice_layer1Customer_81id);
        webservice_layer1Job_77id.setId(id_89idTemp);
        String duration_90id=  request.getParameter("duration273");
            java.util.Calendar duration_90idTemp = null;
        if(!duration_90id.equals("")){
        java.text.DateFormat dateFormatduration273 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration273  = dateFormatduration273.parse(duration_90id);
         duration_90idTemp = new java.util.GregorianCalendar();
        duration_90idTemp.setTime(dateTempduration273);
        }
        String startTimeDate_91id=  request.getParameter("startTimeDate275");
            java.util.Calendar startTimeDate_91idTemp = null;
        if(!startTimeDate_91id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate275 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate275  = dateFormatstartTimeDate275.parse(startTimeDate_91id);
         startTimeDate_91idTemp = new java.util.GregorianCalendar();
        startTimeDate_91idTemp.setTime(dateTempstartTimeDate275);
        }
        String competency_93id=  request.getParameter("competency279");
            java.lang.String competency_93idTemp = null;
        if(!competency_93id.equals("")){
         competency_93idTemp  = competency_93id;
        }
        String id_94id=  request.getParameter("id281");
        int id_94idTemp  = Integer.parseInt(id_94id);
        %>
        <jsp:useBean id="webservice_layer1Competency_92id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_92id.setCompetency(competency_93idTemp);
        webservice_layer1Competency_92id.setId(id_94idTemp);
        String startTimeDateString_95id=  request.getParameter("startTimeDateString283");
            java.lang.String startTimeDateString_95idTemp = null;
        if(!startTimeDateString_95id.equals("")){
         startTimeDateString_95idTemp  = startTimeDateString_95id;
        }
        String telefone_97id=  request.getParameter("telefone287");
            java.lang.String telefone_97idTemp = null;
        if(!telefone_97id.equals("")){
         telefone_97idTemp  = telefone_97id;
        }
        String address_98id=  request.getParameter("address289");
            java.lang.String address_98idTemp = null;
        if(!address_98id.equals("")){
         address_98idTemp  = address_98id;
        }
        String lastName_99id=  request.getParameter("lastName291");
            java.lang.String lastName_99idTemp = null;
        if(!lastName_99id.equals("")){
         lastName_99idTemp  = lastName_99id;
        }
        String email_100id=  request.getParameter("email293");
            java.lang.String email_100idTemp = null;
        if(!email_100id.equals("")){
         email_100idTemp  = email_100id;
        }
        String birthdate_101id=  request.getParameter("birthdate295");
            java.lang.String birthdate_101idTemp = null;
        if(!birthdate_101id.equals("")){
         birthdate_101idTemp  = birthdate_101id;
        }
        String firstName_102id=  request.getParameter("firstName297");
            java.lang.String firstName_102idTemp = null;
        if(!firstName_102id.equals("")){
         firstName_102idTemp  = firstName_102id;
        }
        String id_103id=  request.getParameter("id299");
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
        String qantity_105id=  request.getParameter("qantity303");
            java.lang.String qantity_105idTemp = null;
        if(!qantity_105id.equals("")){
         qantity_105idTemp  = qantity_105id;
        }
        String product_107id=  request.getParameter("product307");
            java.lang.String product_107idTemp = null;
        if(!product_107id.equals("")){
         product_107idTemp  = product_107id;
        }
        String id_108id=  request.getParameter("id309");
        int id_108idTemp  = Integer.parseInt(id_108id);
        %>
        <jsp:useBean id="webservice_layer1Product_106id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_106id.setProduct(product_107idTemp);
        webservice_layer1Product_106id.setId(id_108idTemp);
        String id_109id=  request.getParameter("id311");
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
        java.lang.String deleteSchedule238mtemp = sampleScheduleWebserviceProxyid.deleteSchedule(webservice_layer1Schedule_74id);
if(deleteSchedule238mtemp == null){
%>
<%=deleteSchedule238mtemp %>
<%
}else{
        String tempResultreturnp239 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteSchedule238mtemp));
        %>
        <%= tempResultreturnp239 %>
        <%
}
break;
case 313:
        gotMethod = true;
        String employeeId_110id=  request.getParameter("employeeId316");
        int employeeId_110idTemp  = Integer.parseInt(employeeId_110id);
        String startTimeDate_111id=  request.getParameter("startTimeDate318");
            java.util.Calendar startTimeDate_111idTemp = null;
        if(!startTimeDate_111id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate318 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate318  = dateFormatstartTimeDate318.parse(startTimeDate_111id);
         startTimeDate_111idTemp = new java.util.GregorianCalendar();
        startTimeDate_111idTemp.setTime(dateTempstartTimeDate318);
        }
        webservice_layer.Schedule[] findScheduleArrayByEmployeeDate313mtemp = sampleScheduleWebserviceProxyid.findScheduleArrayByEmployeeDate(employeeId_110idTemp,startTimeDate_111idTemp);
if(findScheduleArrayByEmployeeDate313mtemp == null){
%>
<%=findScheduleArrayByEmployeeDate313mtemp %>
<%
}else{
        String tempreturnp314 = null;
        if(findScheduleArrayByEmployeeDate313mtemp != null){
        java.util.List listreturnp314= java.util.Arrays.asList(findScheduleArrayByEmployeeDate313mtemp);
        tempreturnp314 = listreturnp314.toString();
        }
        %>
        <%=tempreturnp314%>
        <%
}
break;
case 320:
        gotMethod = true;
        webservice_layer.Schedule[] findScheduleArray320mtemp = sampleScheduleWebserviceProxyid.findScheduleArray();
if(findScheduleArray320mtemp == null){
%>
<%=findScheduleArray320mtemp %>
<%
}else{
        String tempreturnp321 = null;
        if(findScheduleArray320mtemp != null){
        java.util.List listreturnp321= java.util.Arrays.asList(findScheduleArray320mtemp);
        tempreturnp321 = listreturnp321.toString();
        }
        %>
        <%=tempreturnp321%>
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