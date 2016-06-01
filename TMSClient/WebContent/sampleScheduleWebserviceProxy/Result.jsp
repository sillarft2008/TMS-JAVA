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
        String employeeId_1id=  request.getParameter("employeeId16");
        int employeeId_1idTemp  = Integer.parseInt(employeeId_1id);
        String startTimeDate_2id=  request.getParameter("startTimeDate18");
            java.util.Calendar startTimeDate_2idTemp = null;
        if(!startTimeDate_2id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate18 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate18  = dateFormatstartTimeDate18.parse(startTimeDate_2id);
         startTimeDate_2idTemp = new java.util.GregorianCalendar();
        startTimeDate_2idTemp.setTime(dateTempstartTimeDate18);
        }
        webservice_layer.Schedule[] findScheduleArrayByEmployeeDate13mtemp = sampleScheduleWebserviceProxyid.findScheduleArrayByEmployeeDate(employeeId_1idTemp,startTimeDate_2idTemp);
if(findScheduleArrayByEmployeeDate13mtemp == null){
%>
<%=findScheduleArrayByEmployeeDate13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(findScheduleArrayByEmployeeDate13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(findScheduleArrayByEmployeeDate13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 20:
        gotMethod = true;
        webservice_layer.Schedule[] findScheduleArray20mtemp = sampleScheduleWebserviceProxyid.findScheduleArray();
if(findScheduleArray20mtemp == null){
%>
<%=findScheduleArray20mtemp %>
<%
}else{
        String tempreturnp21 = null;
        if(findScheduleArray20mtemp != null){
        java.util.List listreturnp21= java.util.Arrays.asList(findScheduleArray20mtemp);
        tempreturnp21 = listreturnp21.toString();
        }
        %>
        <%=tempreturnp21%>
        <%
}
break;
case 23:
        gotMethod = true;
        String startTimeString_4id=  request.getParameter("startTimeString28");
            java.lang.String startTimeString_4idTemp = null;
        if(!startTimeString_4id.equals("")){
         startTimeString_4idTemp  = startTimeString_4id;
        }
        String id_5id=  request.getParameter("id30");
        int id_5idTemp  = Integer.parseInt(id_5id);
        String startDate_7id=  request.getParameter("startDate34");
            java.util.Calendar startDate_7idTemp = null;
        if(!startDate_7id.equals("")){
        java.text.DateFormat dateFormatstartDate34 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate34  = dateFormatstartDate34.parse(startDate_7id);
         startDate_7idTemp = new java.util.GregorianCalendar();
        startDate_7idTemp.setTime(dateTempstartDate34);
        }
        String address_8id=  request.getParameter("address36");
            java.lang.String address_8idTemp = null;
        if(!address_8id.equals("")){
         address_8idTemp  = address_8id;
        }
        String endDate_9id=  request.getParameter("endDate38");
            java.util.Calendar endDate_9idTemp = null;
        if(!endDate_9id.equals("")){
        java.text.DateFormat dateFormatendDate38 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate38  = dateFormatendDate38.parse(endDate_9id);
         endDate_9idTemp = new java.util.GregorianCalendar();
        endDate_9idTemp.setTime(dateTempendDate38);
        }
        String telefone_11id=  request.getParameter("telefone42");
            java.lang.String telefone_11idTemp = null;
        if(!telefone_11id.equals("")){
         telefone_11idTemp  = telefone_11id;
        }
        String cvr_12id=  request.getParameter("cvr44");
        int cvr_12idTemp  = Integer.parseInt(cvr_12id);
        String address_13id=  request.getParameter("address46");
            java.lang.String address_13idTemp = null;
        if(!address_13id.equals("")){
         address_13idTemp  = address_13id;
        }
        String lastName_14id=  request.getParameter("lastName48");
            java.lang.String lastName_14idTemp = null;
        if(!lastName_14id.equals("")){
         lastName_14idTemp  = lastName_14id;
        }
        String firstName_15id=  request.getParameter("firstName50");
            java.lang.String firstName_15idTemp = null;
        if(!firstName_15id.equals("")){
         firstName_15idTemp  = firstName_15id;
        }
        String companyName_16id=  request.getParameter("companyName52");
            java.lang.String companyName_16idTemp = null;
        if(!companyName_16id.equals("")){
         companyName_16idTemp  = companyName_16id;
        }
        String id_17id=  request.getParameter("id54");
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
        String id_18id=  request.getParameter("id56");
        int id_18idTemp  = Integer.parseInt(id_18id);
        %>
        <jsp:useBean id="webservice_layer1Job_6id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_6id.setStartDate(startDate_7idTemp);
        webservice_layer1Job_6id.setAddress(address_8idTemp);
        webservice_layer1Job_6id.setEndDate(endDate_9idTemp);
        webservice_layer1Job_6id.setCustomer(webservice_layer1Customer_10id);
        webservice_layer1Job_6id.setId(id_18idTemp);
        String duration_19id=  request.getParameter("duration58");
            java.util.Calendar duration_19idTemp = null;
        if(!duration_19id.equals("")){
        java.text.DateFormat dateFormatduration58 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration58  = dateFormatduration58.parse(duration_19id);
         duration_19idTemp = new java.util.GregorianCalendar();
        duration_19idTemp.setTime(dateTempduration58);
        }
        String startTimeDate_20id=  request.getParameter("startTimeDate60");
            java.util.Calendar startTimeDate_20idTemp = null;
        if(!startTimeDate_20id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate60 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate60  = dateFormatstartTimeDate60.parse(startTimeDate_20id);
         startTimeDate_20idTemp = new java.util.GregorianCalendar();
        startTimeDate_20idTemp.setTime(dateTempstartTimeDate60);
        }
        String competency_22id=  request.getParameter("competency64");
            java.lang.String competency_22idTemp = null;
        if(!competency_22id.equals("")){
         competency_22idTemp  = competency_22id;
        }
        String id_23id=  request.getParameter("id66");
        int id_23idTemp  = Integer.parseInt(id_23id);
        %>
        <jsp:useBean id="webservice_layer1Competency_21id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_21id.setCompetency(competency_22idTemp);
        webservice_layer1Competency_21id.setId(id_23idTemp);
        String startTimeDateString_24id=  request.getParameter("startTimeDateString68");
            java.lang.String startTimeDateString_24idTemp = null;
        if(!startTimeDateString_24id.equals("")){
         startTimeDateString_24idTemp  = startTimeDateString_24id;
        }
        String telefone_26id=  request.getParameter("telefone72");
            java.lang.String telefone_26idTemp = null;
        if(!telefone_26id.equals("")){
         telefone_26idTemp  = telefone_26id;
        }
        String address_27id=  request.getParameter("address74");
            java.lang.String address_27idTemp = null;
        if(!address_27id.equals("")){
         address_27idTemp  = address_27id;
        }
        String lastName_28id=  request.getParameter("lastName76");
            java.lang.String lastName_28idTemp = null;
        if(!lastName_28id.equals("")){
         lastName_28idTemp  = lastName_28id;
        }
        String email_29id=  request.getParameter("email78");
            java.lang.String email_29idTemp = null;
        if(!email_29id.equals("")){
         email_29idTemp  = email_29id;
        }
        String birthdate_30id=  request.getParameter("birthdate80");
            java.lang.String birthdate_30idTemp = null;
        if(!birthdate_30id.equals("")){
         birthdate_30idTemp  = birthdate_30id;
        }
        String firstName_31id=  request.getParameter("firstName82");
            java.lang.String firstName_31idTemp = null;
        if(!firstName_31id.equals("")){
         firstName_31idTemp  = firstName_31id;
        }
        String id_32id=  request.getParameter("id84");
        int id_32idTemp  = Integer.parseInt(id_32id);
        %>
        <jsp:useBean id="webservice_layer1Employee_25id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_25id.setTelefone(telefone_26idTemp);
        webservice_layer1Employee_25id.setAddress(address_27idTemp);
        webservice_layer1Employee_25id.setLastName(lastName_28idTemp);
        webservice_layer1Employee_25id.setEmail(email_29idTemp);
        webservice_layer1Employee_25id.setBirthdate(birthdate_30idTemp);
        webservice_layer1Employee_25id.setFirstName(firstName_31idTemp);
        webservice_layer1Employee_25id.setId(id_32idTemp);
        String qantity_34id=  request.getParameter("qantity88");
            java.lang.String qantity_34idTemp = null;
        if(!qantity_34id.equals("")){
         qantity_34idTemp  = qantity_34id;
        }
        String product_36id=  request.getParameter("product92");
            java.lang.String product_36idTemp = null;
        if(!product_36id.equals("")){
         product_36idTemp  = product_36id;
        }
        String id_37id=  request.getParameter("id94");
        int id_37idTemp  = Integer.parseInt(id_37id);
        %>
        <jsp:useBean id="webservice_layer1Product_35id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_35id.setProduct(product_36idTemp);
        webservice_layer1Product_35id.setId(id_37idTemp);
        String id_38id=  request.getParameter("id96");
        int id_38idTemp  = Integer.parseInt(id_38id);
        %>
        <jsp:useBean id="webservice_layer1Item_33id" scope="session" class="webservice_layer.Item" />
        <%
        webservice_layer1Item_33id.setQantity(qantity_34idTemp);
        webservice_layer1Item_33id.setProduct(webservice_layer1Product_35id);
        webservice_layer1Item_33id.setId(id_38idTemp);
        %>
        <jsp:useBean id="webservice_layer1Schedule_3id" scope="session" class="webservice_layer.Schedule" />
        <%
        webservice_layer1Schedule_3id.setStartTimeString(startTimeString_4idTemp);
        webservice_layer1Schedule_3id.setId(id_5idTemp);
        webservice_layer1Schedule_3id.setJob(webservice_layer1Job_6id);
        webservice_layer1Schedule_3id.setDuration(duration_19idTemp);
        webservice_layer1Schedule_3id.setStartTimeDate(startTimeDate_20idTemp);
        webservice_layer1Schedule_3id.setCompetency(webservice_layer1Competency_21id);
        webservice_layer1Schedule_3id.setStartTimeDateString(startTimeDateString_24idTemp);
        webservice_layer1Schedule_3id.setEmployee(webservice_layer1Employee_25id);
        webservice_layer1Schedule_3id.setItem(webservice_layer1Item_33id);
        sampleScheduleWebserviceProxyid.createSchedule(webservice_layer1Schedule_3id);
break;
case 98:
        gotMethod = true;
        String startTimeString_40id=  request.getParameter("startTimeString103");
            java.lang.String startTimeString_40idTemp = null;
        if(!startTimeString_40id.equals("")){
         startTimeString_40idTemp  = startTimeString_40id;
        }
        String id_41id=  request.getParameter("id105");
        int id_41idTemp  = Integer.parseInt(id_41id);
        String startDate_43id=  request.getParameter("startDate109");
            java.util.Calendar startDate_43idTemp = null;
        if(!startDate_43id.equals("")){
        java.text.DateFormat dateFormatstartDate109 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate109  = dateFormatstartDate109.parse(startDate_43id);
         startDate_43idTemp = new java.util.GregorianCalendar();
        startDate_43idTemp.setTime(dateTempstartDate109);
        }
        String address_44id=  request.getParameter("address111");
            java.lang.String address_44idTemp = null;
        if(!address_44id.equals("")){
         address_44idTemp  = address_44id;
        }
        String endDate_45id=  request.getParameter("endDate113");
            java.util.Calendar endDate_45idTemp = null;
        if(!endDate_45id.equals("")){
        java.text.DateFormat dateFormatendDate113 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate113  = dateFormatendDate113.parse(endDate_45id);
         endDate_45idTemp = new java.util.GregorianCalendar();
        endDate_45idTemp.setTime(dateTempendDate113);
        }
        String telefone_47id=  request.getParameter("telefone117");
            java.lang.String telefone_47idTemp = null;
        if(!telefone_47id.equals("")){
         telefone_47idTemp  = telefone_47id;
        }
        String cvr_48id=  request.getParameter("cvr119");
        int cvr_48idTemp  = Integer.parseInt(cvr_48id);
        String address_49id=  request.getParameter("address121");
            java.lang.String address_49idTemp = null;
        if(!address_49id.equals("")){
         address_49idTemp  = address_49id;
        }
        String lastName_50id=  request.getParameter("lastName123");
            java.lang.String lastName_50idTemp = null;
        if(!lastName_50id.equals("")){
         lastName_50idTemp  = lastName_50id;
        }
        String firstName_51id=  request.getParameter("firstName125");
            java.lang.String firstName_51idTemp = null;
        if(!firstName_51id.equals("")){
         firstName_51idTemp  = firstName_51id;
        }
        String companyName_52id=  request.getParameter("companyName127");
            java.lang.String companyName_52idTemp = null;
        if(!companyName_52id.equals("")){
         companyName_52idTemp  = companyName_52id;
        }
        String id_53id=  request.getParameter("id129");
        int id_53idTemp  = Integer.parseInt(id_53id);
        %>
        <jsp:useBean id="webservice_layer1Customer_46id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_46id.setTelefone(telefone_47idTemp);
        webservice_layer1Customer_46id.setCvr(cvr_48idTemp);
        webservice_layer1Customer_46id.setAddress(address_49idTemp);
        webservice_layer1Customer_46id.setLastName(lastName_50idTemp);
        webservice_layer1Customer_46id.setFirstName(firstName_51idTemp);
        webservice_layer1Customer_46id.setCompanyName(companyName_52idTemp);
        webservice_layer1Customer_46id.setId(id_53idTemp);
        String id_54id=  request.getParameter("id131");
        int id_54idTemp  = Integer.parseInt(id_54id);
        %>
        <jsp:useBean id="webservice_layer1Job_42id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_42id.setStartDate(startDate_43idTemp);
        webservice_layer1Job_42id.setAddress(address_44idTemp);
        webservice_layer1Job_42id.setEndDate(endDate_45idTemp);
        webservice_layer1Job_42id.setCustomer(webservice_layer1Customer_46id);
        webservice_layer1Job_42id.setId(id_54idTemp);
        String duration_55id=  request.getParameter("duration133");
            java.util.Calendar duration_55idTemp = null;
        if(!duration_55id.equals("")){
        java.text.DateFormat dateFormatduration133 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration133  = dateFormatduration133.parse(duration_55id);
         duration_55idTemp = new java.util.GregorianCalendar();
        duration_55idTemp.setTime(dateTempduration133);
        }
        String startTimeDate_56id=  request.getParameter("startTimeDate135");
            java.util.Calendar startTimeDate_56idTemp = null;
        if(!startTimeDate_56id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate135 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate135  = dateFormatstartTimeDate135.parse(startTimeDate_56id);
         startTimeDate_56idTemp = new java.util.GregorianCalendar();
        startTimeDate_56idTemp.setTime(dateTempstartTimeDate135);
        }
        String competency_58id=  request.getParameter("competency139");
            java.lang.String competency_58idTemp = null;
        if(!competency_58id.equals("")){
         competency_58idTemp  = competency_58id;
        }
        String id_59id=  request.getParameter("id141");
        int id_59idTemp  = Integer.parseInt(id_59id);
        %>
        <jsp:useBean id="webservice_layer1Competency_57id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_57id.setCompetency(competency_58idTemp);
        webservice_layer1Competency_57id.setId(id_59idTemp);
        String startTimeDateString_60id=  request.getParameter("startTimeDateString143");
            java.lang.String startTimeDateString_60idTemp = null;
        if(!startTimeDateString_60id.equals("")){
         startTimeDateString_60idTemp  = startTimeDateString_60id;
        }
        String telefone_62id=  request.getParameter("telefone147");
            java.lang.String telefone_62idTemp = null;
        if(!telefone_62id.equals("")){
         telefone_62idTemp  = telefone_62id;
        }
        String address_63id=  request.getParameter("address149");
            java.lang.String address_63idTemp = null;
        if(!address_63id.equals("")){
         address_63idTemp  = address_63id;
        }
        String lastName_64id=  request.getParameter("lastName151");
            java.lang.String lastName_64idTemp = null;
        if(!lastName_64id.equals("")){
         lastName_64idTemp  = lastName_64id;
        }
        String email_65id=  request.getParameter("email153");
            java.lang.String email_65idTemp = null;
        if(!email_65id.equals("")){
         email_65idTemp  = email_65id;
        }
        String birthdate_66id=  request.getParameter("birthdate155");
            java.lang.String birthdate_66idTemp = null;
        if(!birthdate_66id.equals("")){
         birthdate_66idTemp  = birthdate_66id;
        }
        String firstName_67id=  request.getParameter("firstName157");
            java.lang.String firstName_67idTemp = null;
        if(!firstName_67id.equals("")){
         firstName_67idTemp  = firstName_67id;
        }
        String id_68id=  request.getParameter("id159");
        int id_68idTemp  = Integer.parseInt(id_68id);
        %>
        <jsp:useBean id="webservice_layer1Employee_61id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_61id.setTelefone(telefone_62idTemp);
        webservice_layer1Employee_61id.setAddress(address_63idTemp);
        webservice_layer1Employee_61id.setLastName(lastName_64idTemp);
        webservice_layer1Employee_61id.setEmail(email_65idTemp);
        webservice_layer1Employee_61id.setBirthdate(birthdate_66idTemp);
        webservice_layer1Employee_61id.setFirstName(firstName_67idTemp);
        webservice_layer1Employee_61id.setId(id_68idTemp);
        String qantity_70id=  request.getParameter("qantity163");
            java.lang.String qantity_70idTemp = null;
        if(!qantity_70id.equals("")){
         qantity_70idTemp  = qantity_70id;
        }
        String product_72id=  request.getParameter("product167");
            java.lang.String product_72idTemp = null;
        if(!product_72id.equals("")){
         product_72idTemp  = product_72id;
        }
        String id_73id=  request.getParameter("id169");
        int id_73idTemp  = Integer.parseInt(id_73id);
        %>
        <jsp:useBean id="webservice_layer1Product_71id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_71id.setProduct(product_72idTemp);
        webservice_layer1Product_71id.setId(id_73idTemp);
        String id_74id=  request.getParameter("id171");
        int id_74idTemp  = Integer.parseInt(id_74id);
        %>
        <jsp:useBean id="webservice_layer1Item_69id" scope="session" class="webservice_layer.Item" />
        <%
        webservice_layer1Item_69id.setQantity(qantity_70idTemp);
        webservice_layer1Item_69id.setProduct(webservice_layer1Product_71id);
        webservice_layer1Item_69id.setId(id_74idTemp);
        %>
        <jsp:useBean id="webservice_layer1Schedule_39id" scope="session" class="webservice_layer.Schedule" />
        <%
        webservice_layer1Schedule_39id.setStartTimeString(startTimeString_40idTemp);
        webservice_layer1Schedule_39id.setId(id_41idTemp);
        webservice_layer1Schedule_39id.setJob(webservice_layer1Job_42id);
        webservice_layer1Schedule_39id.setDuration(duration_55idTemp);
        webservice_layer1Schedule_39id.setStartTimeDate(startTimeDate_56idTemp);
        webservice_layer1Schedule_39id.setCompetency(webservice_layer1Competency_57id);
        webservice_layer1Schedule_39id.setStartTimeDateString(startTimeDateString_60idTemp);
        webservice_layer1Schedule_39id.setEmployee(webservice_layer1Employee_61id);
        webservice_layer1Schedule_39id.setItem(webservice_layer1Item_69id);
        java.lang.String deleteSchedule98mtemp = sampleScheduleWebserviceProxyid.deleteSchedule(webservice_layer1Schedule_39id);
if(deleteSchedule98mtemp == null){
%>
<%=deleteSchedule98mtemp %>
<%
}else{
        String tempResultreturnp99 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteSchedule98mtemp));
        %>
        <%= tempResultreturnp99 %>
        <%
}
break;
case 173:
        gotMethod = true;
        String startTimeString_76id=  request.getParameter("startTimeString178");
            java.lang.String startTimeString_76idTemp = null;
        if(!startTimeString_76id.equals("")){
         startTimeString_76idTemp  = startTimeString_76id;
        }
        String id_77id=  request.getParameter("id180");
        int id_77idTemp  = Integer.parseInt(id_77id);
        String startDate_79id=  request.getParameter("startDate184");
            java.util.Calendar startDate_79idTemp = null;
        if(!startDate_79id.equals("")){
        java.text.DateFormat dateFormatstartDate184 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartDate184  = dateFormatstartDate184.parse(startDate_79id);
         startDate_79idTemp = new java.util.GregorianCalendar();
        startDate_79idTemp.setTime(dateTempstartDate184);
        }
        String address_80id=  request.getParameter("address186");
            java.lang.String address_80idTemp = null;
        if(!address_80id.equals("")){
         address_80idTemp  = address_80id;
        }
        String endDate_81id=  request.getParameter("endDate188");
            java.util.Calendar endDate_81idTemp = null;
        if(!endDate_81id.equals("")){
        java.text.DateFormat dateFormatendDate188 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempendDate188  = dateFormatendDate188.parse(endDate_81id);
         endDate_81idTemp = new java.util.GregorianCalendar();
        endDate_81idTemp.setTime(dateTempendDate188);
        }
        String telefone_83id=  request.getParameter("telefone192");
            java.lang.String telefone_83idTemp = null;
        if(!telefone_83id.equals("")){
         telefone_83idTemp  = telefone_83id;
        }
        String cvr_84id=  request.getParameter("cvr194");
        int cvr_84idTemp  = Integer.parseInt(cvr_84id);
        String address_85id=  request.getParameter("address196");
            java.lang.String address_85idTemp = null;
        if(!address_85id.equals("")){
         address_85idTemp  = address_85id;
        }
        String lastName_86id=  request.getParameter("lastName198");
            java.lang.String lastName_86idTemp = null;
        if(!lastName_86id.equals("")){
         lastName_86idTemp  = lastName_86id;
        }
        String firstName_87id=  request.getParameter("firstName200");
            java.lang.String firstName_87idTemp = null;
        if(!firstName_87id.equals("")){
         firstName_87idTemp  = firstName_87id;
        }
        String companyName_88id=  request.getParameter("companyName202");
            java.lang.String companyName_88idTemp = null;
        if(!companyName_88id.equals("")){
         companyName_88idTemp  = companyName_88id;
        }
        String id_89id=  request.getParameter("id204");
        int id_89idTemp  = Integer.parseInt(id_89id);
        %>
        <jsp:useBean id="webservice_layer1Customer_82id" scope="session" class="webservice_layer.Customer" />
        <%
        webservice_layer1Customer_82id.setTelefone(telefone_83idTemp);
        webservice_layer1Customer_82id.setCvr(cvr_84idTemp);
        webservice_layer1Customer_82id.setAddress(address_85idTemp);
        webservice_layer1Customer_82id.setLastName(lastName_86idTemp);
        webservice_layer1Customer_82id.setFirstName(firstName_87idTemp);
        webservice_layer1Customer_82id.setCompanyName(companyName_88idTemp);
        webservice_layer1Customer_82id.setId(id_89idTemp);
        String id_90id=  request.getParameter("id206");
        int id_90idTemp  = Integer.parseInt(id_90id);
        %>
        <jsp:useBean id="webservice_layer1Job_78id" scope="session" class="webservice_layer.Job" />
        <%
        webservice_layer1Job_78id.setStartDate(startDate_79idTemp);
        webservice_layer1Job_78id.setAddress(address_80idTemp);
        webservice_layer1Job_78id.setEndDate(endDate_81idTemp);
        webservice_layer1Job_78id.setCustomer(webservice_layer1Customer_82id);
        webservice_layer1Job_78id.setId(id_90idTemp);
        String duration_91id=  request.getParameter("duration208");
            java.util.Calendar duration_91idTemp = null;
        if(!duration_91id.equals("")){
        java.text.DateFormat dateFormatduration208 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempduration208  = dateFormatduration208.parse(duration_91id);
         duration_91idTemp = new java.util.GregorianCalendar();
        duration_91idTemp.setTime(dateTempduration208);
        }
        String startTimeDate_92id=  request.getParameter("startTimeDate210");
            java.util.Calendar startTimeDate_92idTemp = null;
        if(!startTimeDate_92id.equals("")){
        java.text.DateFormat dateFormatstartTimeDate210 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempstartTimeDate210  = dateFormatstartTimeDate210.parse(startTimeDate_92id);
         startTimeDate_92idTemp = new java.util.GregorianCalendar();
        startTimeDate_92idTemp.setTime(dateTempstartTimeDate210);
        }
        String competency_94id=  request.getParameter("competency214");
            java.lang.String competency_94idTemp = null;
        if(!competency_94id.equals("")){
         competency_94idTemp  = competency_94id;
        }
        String id_95id=  request.getParameter("id216");
        int id_95idTemp  = Integer.parseInt(id_95id);
        %>
        <jsp:useBean id="webservice_layer1Competency_93id" scope="session" class="webservice_layer.Competency" />
        <%
        webservice_layer1Competency_93id.setCompetency(competency_94idTemp);
        webservice_layer1Competency_93id.setId(id_95idTemp);
        String startTimeDateString_96id=  request.getParameter("startTimeDateString218");
            java.lang.String startTimeDateString_96idTemp = null;
        if(!startTimeDateString_96id.equals("")){
         startTimeDateString_96idTemp  = startTimeDateString_96id;
        }
        String telefone_98id=  request.getParameter("telefone222");
            java.lang.String telefone_98idTemp = null;
        if(!telefone_98id.equals("")){
         telefone_98idTemp  = telefone_98id;
        }
        String address_99id=  request.getParameter("address224");
            java.lang.String address_99idTemp = null;
        if(!address_99id.equals("")){
         address_99idTemp  = address_99id;
        }
        String lastName_100id=  request.getParameter("lastName226");
            java.lang.String lastName_100idTemp = null;
        if(!lastName_100id.equals("")){
         lastName_100idTemp  = lastName_100id;
        }
        String email_101id=  request.getParameter("email228");
            java.lang.String email_101idTemp = null;
        if(!email_101id.equals("")){
         email_101idTemp  = email_101id;
        }
        String birthdate_102id=  request.getParameter("birthdate230");
            java.lang.String birthdate_102idTemp = null;
        if(!birthdate_102id.equals("")){
         birthdate_102idTemp  = birthdate_102id;
        }
        String firstName_103id=  request.getParameter("firstName232");
            java.lang.String firstName_103idTemp = null;
        if(!firstName_103id.equals("")){
         firstName_103idTemp  = firstName_103id;
        }
        String id_104id=  request.getParameter("id234");
        int id_104idTemp  = Integer.parseInt(id_104id);
        %>
        <jsp:useBean id="webservice_layer1Employee_97id" scope="session" class="webservice_layer.Employee" />
        <%
        webservice_layer1Employee_97id.setTelefone(telefone_98idTemp);
        webservice_layer1Employee_97id.setAddress(address_99idTemp);
        webservice_layer1Employee_97id.setLastName(lastName_100idTemp);
        webservice_layer1Employee_97id.setEmail(email_101idTemp);
        webservice_layer1Employee_97id.setBirthdate(birthdate_102idTemp);
        webservice_layer1Employee_97id.setFirstName(firstName_103idTemp);
        webservice_layer1Employee_97id.setId(id_104idTemp);
        String qantity_106id=  request.getParameter("qantity238");
            java.lang.String qantity_106idTemp = null;
        if(!qantity_106id.equals("")){
         qantity_106idTemp  = qantity_106id;
        }
        String product_108id=  request.getParameter("product242");
            java.lang.String product_108idTemp = null;
        if(!product_108id.equals("")){
         product_108idTemp  = product_108id;
        }
        String id_109id=  request.getParameter("id244");
        int id_109idTemp  = Integer.parseInt(id_109id);
        %>
        <jsp:useBean id="webservice_layer1Product_107id" scope="session" class="webservice_layer.Product" />
        <%
        webservice_layer1Product_107id.setProduct(product_108idTemp);
        webservice_layer1Product_107id.setId(id_109idTemp);
        String id_110id=  request.getParameter("id246");
        int id_110idTemp  = Integer.parseInt(id_110id);
        %>
        <jsp:useBean id="webservice_layer1Item_105id" scope="session" class="webservice_layer.Item" />
        <%
        webservice_layer1Item_105id.setQantity(qantity_106idTemp);
        webservice_layer1Item_105id.setProduct(webservice_layer1Product_107id);
        webservice_layer1Item_105id.setId(id_110idTemp);
        %>
        <jsp:useBean id="webservice_layer1Schedule_75id" scope="session" class="webservice_layer.Schedule" />
        <%
        webservice_layer1Schedule_75id.setStartTimeString(startTimeString_76idTemp);
        webservice_layer1Schedule_75id.setId(id_77idTemp);
        webservice_layer1Schedule_75id.setJob(webservice_layer1Job_78id);
        webservice_layer1Schedule_75id.setDuration(duration_91idTemp);
        webservice_layer1Schedule_75id.setStartTimeDate(startTimeDate_92idTemp);
        webservice_layer1Schedule_75id.setCompetency(webservice_layer1Competency_93id);
        webservice_layer1Schedule_75id.setStartTimeDateString(startTimeDateString_96idTemp);
        webservice_layer1Schedule_75id.setEmployee(webservice_layer1Employee_97id);
        webservice_layer1Schedule_75id.setItem(webservice_layer1Item_105id);
        java.lang.String updateSchedule173mtemp = sampleScheduleWebserviceProxyid.updateSchedule(webservice_layer1Schedule_75id);
if(updateSchedule173mtemp == null){
%>
<%=updateSchedule173mtemp %>
<%
}else{
        String tempResultreturnp174 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateSchedule173mtemp));
        %>
        <%= tempResultreturnp174 %>
        <%
}
break;
case 248:
        gotMethod = true;
        String scheduleId_111id=  request.getParameter("scheduleId321");
        int scheduleId_111idTemp  = Integer.parseInt(scheduleId_111id);
        webservice_layer.Schedule findSchedule248mtemp = sampleScheduleWebserviceProxyid.findSchedule(scheduleId_111idTemp);
if(findSchedule248mtemp == null){
%>
<%=findSchedule248mtemp %>
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
if(findSchedule248mtemp != null){
java.lang.String typestartTimeString251 = findSchedule248mtemp.getStartTimeString();
        String tempResultstartTimeString251 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartTimeString251));
        %>
        <%= tempResultstartTimeString251 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
%>
<%=findSchedule248mtemp.getId()
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
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
if(tebece0 != null){
java.util.Calendar typestartDate257 = tebece0.getStartDate();
        java.text.DateFormat dateFormatstartDate257 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartDate257 = typestartDate257.getTime();
        String tempResultstartDate257 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartDate257.format(datestartDate257));
        %>
        <%= tempResultstartDate257 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
if(tebece0 != null){
java.lang.String typeaddress259 = tebece0.getAddress();
        String tempResultaddress259 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress259));
        %>
        <%= tempResultaddress259 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
if(tebece0 != null){
java.util.Calendar typeendDate261 = tebece0.getEndDate();
        java.text.DateFormat dateFormatendDate261 = java.text.DateFormat.getDateInstance();
        java.util.Date dateendDate261 = typeendDate261.getTime();
        String tempResultendDate261 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatendDate261.format(dateendDate261));
        %>
        <%= tempResultendDate261 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typetelefone265 = tebece1.getTelefone();
        String tempResulttelefone265 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone265));
        %>
        <%= tempResulttelefone265 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
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
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typeaddress269 = tebece1.getAddress();
        String tempResultaddress269 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress269));
        %>
        <%= tempResultaddress269 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typelastName271 = tebece1.getLastName();
        String tempResultlastName271 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName271));
        %>
        <%= tempResultlastName271 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typefirstName273 = tebece1.getFirstName();
        String tempResultfirstName273 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName273));
        %>
        <%= tempResultfirstName273 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
if(tebece0 != null){
webservice_layer.Customer tebece1=tebece0.getCustomer();
if(tebece1 != null){
java.lang.String typecompanyName275 = tebece1.getCompanyName();
        String tempResultcompanyName275 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompanyName275));
        %>
        <%= tempResultcompanyName275 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
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
if(findSchedule248mtemp != null){
webservice_layer.Job tebece0=findSchedule248mtemp.getJob();
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
if(findSchedule248mtemp != null){
java.util.Calendar typeduration281 = findSchedule248mtemp.getDuration();
        java.text.DateFormat dateFormatduration281 = java.text.DateFormat.getDateInstance();
        java.util.Date dateduration281 = typeduration281.getTime();
        String tempResultduration281 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatduration281.format(dateduration281));
        %>
        <%= tempResultduration281 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startTimeDate:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
java.util.Calendar typestartTimeDate283 = findSchedule248mtemp.getStartTimeDate();
        java.text.DateFormat dateFormatstartTimeDate283 = java.text.DateFormat.getDateInstance();
        java.util.Date datestartTimeDate283 = typestartTimeDate283.getTime();
        String tempResultstartTimeDate283 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatstartTimeDate283.format(datestartTimeDate283));
        %>
        <%= tempResultstartTimeDate283 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Competency tebece0=findSchedule248mtemp.getCompetency();
if(tebece0 != null){
java.lang.String typecompetency287 = tebece0.getCompetency();
        String tempResultcompetency287 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecompetency287));
        %>
        <%= tempResultcompetency287 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
webservice_layer.Competency tebece0=findSchedule248mtemp.getCompetency();
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
if(findSchedule248mtemp != null){
java.lang.String typestartTimeDateString291 = findSchedule248mtemp.getStartTimeDateString();
        String tempResultstartTimeDateString291 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartTimeDateString291));
        %>
        <%= tempResultstartTimeDateString291 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Employee tebece0=findSchedule248mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typetelefone295 = tebece0.getTelefone();
        String tempResulttelefone295 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetelefone295));
        %>
        <%= tempResulttelefone295 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">address:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
webservice_layer.Employee tebece0=findSchedule248mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typeaddress297 = tebece0.getAddress();
        String tempResultaddress297 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress297));
        %>
        <%= tempResultaddress297 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
webservice_layer.Employee tebece0=findSchedule248mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typelastName299 = tebece0.getLastName();
        String tempResultlastName299 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName299));
        %>
        <%= tempResultlastName299 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
webservice_layer.Employee tebece0=findSchedule248mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typeemail301 = tebece0.getEmail();
        String tempResultemail301 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail301));
        %>
        <%= tempResultemail301 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">birthdate:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
webservice_layer.Employee tebece0=findSchedule248mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typebirthdate303 = tebece0.getBirthdate();
        String tempResultbirthdate303 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebirthdate303));
        %>
        <%= tempResultbirthdate303 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
webservice_layer.Employee tebece0=findSchedule248mtemp.getEmployee();
if(tebece0 != null){
java.lang.String typefirstName305 = tebece0.getFirstName();
        String tempResultfirstName305 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName305));
        %>
        <%= tempResultfirstName305 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(findSchedule248mtemp != null){
webservice_layer.Employee tebece0=findSchedule248mtemp.getEmployee();
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
if(findSchedule248mtemp != null){
webservice_layer.Item tebece0=findSchedule248mtemp.getItem();
if(tebece0 != null){
java.lang.String typeqantity311 = tebece0.getQantity();
        String tempResultqantity311 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeqantity311));
        %>
        <%= tempResultqantity311 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Item tebece0=findSchedule248mtemp.getItem();
if(tebece0 != null){
webservice_layer.Product tebece1=tebece0.getProduct();
if(tebece1 != null){
java.lang.String typeproduct315 = tebece1.getProduct();
        String tempResultproduct315 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeproduct315));
        %>
        <%= tempResultproduct315 %>
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
if(findSchedule248mtemp != null){
webservice_layer.Item tebece0=findSchedule248mtemp.getItem();
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
if(findSchedule248mtemp != null){
webservice_layer.Item tebece0=findSchedule248mtemp.getItem();
if(tebece0 != null){
%>
<%=tebece0.getId()
%><%}}%>
</TD>
</TABLE>
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