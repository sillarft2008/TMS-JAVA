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
        sampleScheduleWebserviceProxyid.createSchedule(webservice_layer1Schedule_37id);
break;
case 163:
        gotMethod = true;
        String startTimeString_74id=  request.getParameter("startTimeString168");
            java.lang.String startTimeString_74idTemp = null;
        if(!startTimeString_74id.equals("")){
         startTimeString_74idTemp  = startTimeString_74id;
        }
        String id_75id=  request.getParameter("id170");
        int id_75idTemp  = Integer.parseInt(id_75id);
        String startDate_77id=  request.getParameter("startDate174");
            java.util.Calendar startDate_77idTemp = null;
        if(!startDate_77id.equals("")){
        java.text.DateFormat dateFormatstartDate174 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate174  = dateFormatstartDate174.parse(startDate_77id);
         startDate_77idTemp = new java.util.GregorianCalendar();
        startDate_77idTemp.setTime(dateTempstartDate174);
        }
        String address_78id=  request.getParameter("address176");
            java.lang.String address_78idTemp = null;
        if(!address_78id.equals("")){
         address_78idTemp  = address_78id;
        }
        String endDate_79id=  request.getParameter("endDate178");
            java.util.Calendar endDate_79idTemp = null;
        if(!endDate_79id.equals("")){
        java.text.DateFormat dateFormatendDate178 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate178  = dateFormatendDate178.parse(endDate_79id);
         endDate_79idTemp = new java.util.GregorianCalendar();
        endDate_79idTemp.setTime(dateTempendDate178);
        }
        String telefone_81id=  request.getParameter("telefone182");
            java.lang.String telefone_81idTemp = null;
        if(!telefone_81id.equals("")){
         telefone_81idTemp  = telefone_81id;
        }
        String cvr_82id=  request.getParameter("cvr184");
        int cvr_82idTemp  = Integer.parseInt(cvr_82id);
        String address_83id=  request.getParameter("address186");
            java.lang.String address_83idTemp = null;
        if(!address_83id.equals("")){
         address_83idTemp  = address_83id;
        }
        String lastName_84id=  request.getParameter("lastName188");
            java.lang.String lastName_84idTemp = null;
        if(!lastName_84id.equals("")){
         lastName_84idTemp  = lastName_84id;
        }
        String firstName_85id=  request.getParameter("firstName190");
            java.lang.String firstName_85idTemp = null;
        if(!firstName_85id.equals("")){
         firstName_85idTemp  = firstName_85id;
        }
        String companyName_86id=  request.getParameter("companyName192");
            java.lang.String companyName_86idTemp = null;
        if(!companyName_86id.equals("")){
         companyName_86idTemp  = companyName_86id;
        }
        String id_87id=  request.getParameter("id194");
        int id_87idTemp  = Integer.parseInt(id_87id);
        %>
        <jsp:useBean id="webservice_layer1Customer_80id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_80id.setTelefone(telefone_81idTemp);
        webservice_layer1Customer_80id.setCvr(cvr_82idTemp);
        webservice_layer1Customer_80id.setAddress(address_83idTemp);
        webservice_layer1Customer_80id.setLastName(lastName_84idTemp);
        webservice_layer1Customer_80id.setFirstName(firstName_85idTemp);
        webservice_layer1Customer_80id.setCompanyName(companyName_86idTemp);
        webservice_layer1Customer_80id.setId(id_87idTemp);
        String id_88id=  request.getParameter("id196");
        int id_88idTemp  = Integer.parseInt(id_88id);
        %>
        <jsp:useBean id="webservice_layer1Job_76id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_76id.setStartDate(startDate_77idTemp);
        webservice_layer1Job_76id.setAddress(address_78idTemp);
        webservice_layer1Job_76id.setEndDate(endDate_79idTemp);
        webservice_layer1Job_76id.setCustomer(webservice_layer1Customer_80id);
        webservice_layer1Job_76id.setId(id_88idTemp);
        String duration_89id=  request.getParameter("duration198");
            java.util.Calendar duration_89idTemp = null;
        if(!duration_89id.equals("")){
        java.text.DateFormat dateFormatduration198 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration198  = dateFormatduration198.parse(duration_89id);
         duration_89idTemp = new java.util.GregorianCalendar();
        duration_89idTemp.setTime(dateTempduration198);
        }
        String startTimeDate_90id=  request.getParameter("startTimeDate200");
            java.util.Calendar startTimeDate_90idTemp = null;
        if(!startTimeDate_90id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate200 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate200  = dateFormatstartTimeDate200.parse(startTimeDate_90id);
         startTimeDate_90idTemp = new java.util.GregorianCalendar();
        startTimeDate_90idTemp.setTime(dateTempstartTimeDate200);
        }
        String competency_92id=  request.getParameter("competency204");
            java.lang.String competency_92idTemp = null;
        if(!competency_92id.equals("")){
         competency_92idTemp  = competency_92id;
        }
        String id_93id=  request.getParameter("id206");
        int id_93idTemp  = Integer.parseInt(id_93id);
        %>
        <jsp:useBean id="webservice_layer1Competency_91id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_91id.setCompetency(competency_92idTemp);
        webservice_layer1Competency_91id.setId(id_93idTemp);
        String startTimeDateString_94id=  request.getParameter("startTimeDateString208");
            java.lang.String startTimeDateString_94idTemp = null;
        if(!startTimeDateString_94id.equals("")){
         startTimeDateString_94idTemp  = startTimeDateString_94id;
        }
        String telefone_96id=  request.getParameter("telefone212");
            java.lang.String telefone_96idTemp = null;
        if(!telefone_96id.equals("")){
         telefone_96idTemp  = telefone_96id;
        }
        String address_97id=  request.getParameter("address214");
            java.lang.String address_97idTemp = null;
        if(!address_97id.equals("")){
         address_97idTemp  = address_97id;
        }
        String lastName_98id=  request.getParameter("lastName216");
            java.lang.String lastName_98idTemp = null;
        if(!lastName_98id.equals("")){
         lastName_98idTemp  = lastName_98id;
        }
        String email_99id=  request.getParameter("email218");
            java.lang.String email_99idTemp = null;
        if(!email_99id.equals("")){
         email_99idTemp  = email_99id;
        }
        String birthdate_100id=  request.getParameter("birthdate220");
            java.lang.String birthdate_100idTemp = null;
        if(!birthdate_100id.equals("")){
         birthdate_100idTemp  = birthdate_100id;
        }
        String firstName_101id=  request.getParameter("firstName222");
            java.lang.String firstName_101idTemp = null;
        if(!firstName_101id.equals("")){
         firstName_101idTemp  = firstName_101id;
        }
        String id_102id=  request.getParameter("id224");
        int id_102idTemp  = Integer.parseInt(id_102id);
        %>
        <jsp:useBean id="webservice_layer1Employee_95id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_95id.setTelefone(telefone_96idTemp);
        webservice_layer1Employee_95id.setAddress(address_97idTemp);
        webservice_layer1Employee_95id.setLastName(lastName_98idTemp);
        webservice_layer1Employee_95id.setEmail(email_99idTemp);
        webservice_layer1Employee_95id.setBirthdate(birthdate_100idTemp);
        webservice_layer1Employee_95id.setFirstName(firstName_101idTemp);
        webservice_layer1Employee_95id.setId(id_102idTemp);
        String qantity_104id=  request.getParameter("qantity228");
            java.lang.String qantity_104idTemp = null;
        if(!qantity_104id.equals("")){
         qantity_104idTemp  = qantity_104id;
        }
        String product_106id=  request.getParameter("product232");
            java.lang.String product_106idTemp = null;
        if(!product_106id.equals("")){
         product_106idTemp  = product_106id;
        }
        String id_107id=  request.getParameter("id234");
        int id_107idTemp  = Integer.parseInt(id_107id);
        %>
        <jsp:useBean id="webservice_layer1Product_105id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_105id.setProduct(product_106idTemp);
        webservice_layer1Product_105id.setId(id_107idTemp);
        String id_108id=  request.getParameter("id236");
        int id_108idTemp  = Integer.parseInt(id_108id);
        %>
        <jsp:useBean id="webservice_layer1Item_103id" scope="session" class="webservice_layer.Item" />
        <%
        webservice_layer1Item_103id.setQantity(qantity_104idTemp);
        webservice_layer1Item_103id.setProduct(webservice_layer1Product_105id);
        webservice_layer1Item_103id.setId(id_108idTemp);
        %>
        <jsp:useBean id="webservice_layer1Schedule_73id" scope="session" class="webservice_layer.Schedule" />
        <%
        webservice_layer1Schedule_73id.setStartTimeString(startTimeString_74idTemp);
        webservice_layer1Schedule_73id.setId(id_75idTemp);
        webservice_layer1Schedule_73id.setJob(webservice_layer1Job_76id);
        webservice_layer1Schedule_73id.setDuration(duration_89idTemp);
        webservice_layer1Schedule_73id.setStartTimeDate(startTimeDate_90idTemp);
        webservice_layer1Schedule_73id.setCompetency(webservice_layer1Competency_91id);
        webservice_layer1Schedule_73id.setStartTimeDateString(startTimeDateString_94idTemp);
        webservice_layer1Schedule_73id.setEmployee(webservice_layer1Employee_95id);
        webservice_layer1Schedule_73id.setItem(webservice_layer1Item_103id);
        java.lang.String updateSchedule163mtemp = sampleScheduleWebserviceProxyid.updateSchedule(webservice_layer1Schedule_73id);
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
        String scheduleId_109id=  request.getParameter("scheduleId311");
        int scheduleId_109idTemp  = Integer.parseInt(scheduleId_109id);
        webservice_layer.Schedule findSchedule238mtemp = sampleScheduleWebserviceProxyid.findSchedule(scheduleId_109idTemp);
if(findSchedule238mtemp == null){
%>
<%=findSchedule238mtemp %>
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
if(findSchedule238mtemp != null){
java.lang.String typestartTimeString241 = findSchedule238mtemp.getStartTimeString();
        String tempResultstartTimeString241 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartTimeString241));
        %>
        <%= tempResultstartTimeString241 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
%>
<%=findSchedule238mtemp.getId()
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
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
if(tebece0 != null){
java.util.Calendar typestartDate247 = tebece0.getStartDate();
        java.text.DateFormat dateFormatstartDate247 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate247 = typestartDate247.getTime();
        String tempResultstartDate247 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate247.format(datestartDate247));
        %>
        <%= tempResultstartDate247 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
if(tebece0 != null){
java.lang.String typeaddress249 = tebece0.getAddress();
        String tempResultaddress249 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress249));
        %>
        <%= tempResultaddress249 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
if(tebece0 != null){
java.util.Calendar typeendDate251 = tebece0.getEndDate();
        java.text.DateFormat dateFormatendDate251 = java.text.DateFormat.getDateInstance();
        java.util.Date dateendDate251 = typeendDate251.getTime();
        String tempResultendDate251 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatendDate251.format(dateendDate251));
        %>
        <%= tempResultendDate251 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typetelefone255 = tebece1.getTelefone();
        String tempResulttelefone255 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone255));
        %>
        <%= tempResulttelefone255 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
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
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typeaddress259 = tebece1.getAddress();
        String tempResultaddress259 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress259));
        %>
        <%= tempResultaddress259 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typelastName261 = tebece1.getLastName();
        String tempResultlastName261 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName261));
        %>
        <%= tempResultlastName261 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typefirstName263 = tebece1.getFirstName();
        String tempResultfirstName263 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName263));
        %>
        <%= tempResultfirstName263 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typecompanyName265 = tebece1.getCompanyName();
        String tempResultcompanyName265 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName265));
        %>
        <%= tempResultcompanyName265 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
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
if(findSchedule238mtemp != null){
webservice_layer.Job tebece0=findSchedule238mtemp.getJob();
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
if(findSchedule238mtemp != null){
java.util.Calendar typeduration271 = findSchedule238mtemp.getDuration();
        java.text.DateFormat dateFormatduration271 = java.text.DateFormat.getDateInstance();
        java.util.Date dateduration271 = typeduration271.getTime();
        String tempResultduration271 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatduration271.format(dateduration271));
        %>
        <%= tempResultduration271 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDate:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
java.util.Calendar typestartTimeDate273 = findSchedule238mtemp.getStartTimeDate();
        java.text.DateFormat dateFormatstartTimeDate273 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartTimeDate273 = typestartTimeDate273.getTime();
        String tempResultstartTimeDate273 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartTimeDate273.format(datestartTimeDate273));
        %>
        <%= tempResultstartTimeDate273 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Competency tebece0=findSchedule238mtemp.getCompetency();
if(tebece0 != null){
java.lang.String typecompetency277 = tebece0.getCompetency();
        String tempResultcompetency277 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompetency277));
        %>
        <%= tempResultcompetency277 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
webservice_layer.Competency tebece0=findSchedule238mtemp.getCompetency();
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
if(findSchedule238mtemp != null){
java.lang.String typestartTimeDateString281 = findSchedule238mtemp.getStartTimeDateString();
        String tempResultstartTimeDateString281 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartTimeDateString281));
        %>
        <%= tempResultstartTimeDateString281 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Employee tebece0=findSchedule238mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typetelefone285 = tebece0.getTelefone();
        String tempResulttelefone285 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone285));
        %>
        <%= tempResulttelefone285 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
webservice_layer.Employee tebece0=findSchedule238mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typeaddress287 = tebece0.getAddress();
        String tempResultaddress287 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress287));
        %>
        <%= tempResultaddress287 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
webservice_layer.Employee tebece0=findSchedule238mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typelastName289 = tebece0.getLastName();
        String tempResultlastName289 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName289));
        %>
        <%= tempResultlastName289 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
webservice_layer.Employee tebece0=findSchedule238mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typeemail291 = tebece0.getEmail();
        String tempResultemail291 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail291));
        %>
        <%= tempResultemail291 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">birthdate:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
webservice_layer.Employee tebece0=findSchedule238mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typebirthdate293 = tebece0.getBirthdate();
        String tempResultbirthdate293 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebirthdate293));
        %>
        <%= tempResultbirthdate293 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
webservice_layer.Employee tebece0=findSchedule238mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typefirstName295 = tebece0.getFirstName();
        String tempResultfirstName295 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName295));
        %>
        <%= tempResultfirstName295 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule238mtemp != null){
webservice_layer.Employee tebece0=findSchedule238mtemp.getEmployee();
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
if(findSchedule238mtemp != null){
webservice_layer.Item tebece0=findSchedule238mtemp.getItem();
if(tebece0 != null){
java.lang.String typeqantity301 = tebece0.getQantity();
        String tempResultqantity301 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeqantity301));
        %>
        <%= tempResultqantity301 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Item tebece0=findSchedule238mtemp.getItem();
if(tebece0 != null){
webservice_layer.Product tebece1=tebece0.getProduct();
if(tebece1 != null){
java.lang.String typeproduct305 = tebece1.getProduct();
        String tempResultproduct305 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeproduct305));
        %>
        <%= tempResultproduct305 %>
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
if(findSchedule238mtemp != null){
webservice_layer.Item tebece0=findSchedule238mtemp.getItem();
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
if(findSchedule238mtemp != null){
webservice_layer.Item tebece0=findSchedule238mtemp.getItem();
if(tebece0 != null){
%>
<%=tebece0.getId()
%><%}}%>
</TD>
</TABLE>
<%
}
break;
case 313:
        gotMethod = true;
        webservice_layer.Schedule[] findScheduleArray313mtemp = sampleScheduleWebserviceProxyid.findScheduleArray();
if(findScheduleArray313mtemp == null){
%>
<%=findScheduleArray313mtemp %>
<%
}else{
        String tempreturnp314 = null;
        if(findScheduleArray313mtemp != null){
        java.util.List listreturnp314= java.util.Arrays.asList(findScheduleArray313mtemp);
        tempreturnp314 = listreturnp314.toString();
        }
        %>
        <%=tempreturnp314%>
        <%
}
break;
case 316:
        gotMethod = true;
        String employeeId_110id=  request.getParameter("employeeId319");
        int employeeId_110idTemp  = Integer.parseInt(employeeId_110id);
        String startTimeDate_111id=  request.getParameter("startTimeDate321");
            java.util.Calendar startTimeDate_111idTemp = null;
        if(!startTimeDate_111id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate321 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate321  = dateFormatstartTimeDate321.parse(startTimeDate_111id);
         startTimeDate_111idTemp = new java.util.GregorianCalendar();
        startTimeDate_111idTemp.setTime(dateTempstartTimeDate321);
        }
        webservice_layer.Schedule[] findScheduleArrayByEmployeeDate316mtemp = sampleScheduleWebserviceProxyid.findScheduleArrayByEmployeeDate(employeeId_110idTemp,startTimeDate_111idTemp);
if(findScheduleArrayByEmployeeDate316mtemp == null){
%>
<%=findScheduleArrayByEmployeeDate316mtemp %>
<%
}else{
        String tempreturnp317 = null;
        if(findScheduleArrayByEmployeeDate316mtemp != null){
        java.util.List listreturnp317= java.util.Arrays.asList(findScheduleArrayByEmployeeDate316mtemp);
        tempreturnp317 = listreturnp317.toString();
        }
        %>
        <%=tempreturnp317%>
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