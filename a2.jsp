<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Design by http://www.bluewebtemplates.com
Released for free under a Creative Commons Attribution 3.0 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Template</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<!-- CuFon ends -->
</head>
<body>
<div class="main">

  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
       <li class="active"><a href="dataset.jsp">DATASET</a></li>
        <li><a href="data1.jsp">TRAINING SET</a></li>
        <li><a href="sax.jsp">PARTITIONING</a></li>
        <li><a href="clusters.jsp">CLUSTERING-I & II</a></li>
       <li><a href="clusters2.jsp">RULESET</a></li>
       <li><a href="a1.jsp">PREDICTION</a></li>
            
</ul>
    </div>
    <div class="clr"></div>
  </div>
  <div class="header">
    <div class="header_resize">
      <div class="logo"><h1>Automated Insurance Systems with Fraud Detection and Risk Measurement based on Artificial Intelligence
</h1></div>
    </div>
  </div>


  <div class="content1">
    <div class="content_resize1">
      <div class="mainbar1">
        <div class="article1">
        <h2>

</h2>
<%@page import='java.io.*,java.sql.*'%>

<%
String STATE=request.getParameter("STATE");	
String EXPIRED=request.getParameter("EXPIRED");
String COVERAGE=request.getParameter("COVERAGE");
String VEHICAL_type=request.getParameter("VEHICAL type");
String EMPLOYMENTSTATUS=request.getParameter("EMPLOYMENTSTATUS");
String INCOME=request.getParameter("POLICY");  	
String LOCATION=request.getParameter("LOCATION");
String VEHICAL_STATUS=request.getParameter("VEVICAL_STATUS");
String TOTAL_CLAIM_AMOUNT=request.getParameter("TOTAL_CLAIM_AMOUNT");

float amount=0f;
float threshold=30;
//try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","insurance","insurance");
PreparedStatement ps_A=con.prepareStatement("select avg(TOTAL_CLAIM_AMOUNT) from APP where STATE='"+STATE+"' and LOCATIONCODE='"+LOCATION+"' and VAHICALSTATUS='"+VEHICAL_STATUS+"'");
ResultSet rsA=ps_A.executeQuery();
if(rsA.next()){amount=rsA.getFloat(1);}
out.println("Mean value for claim:"+amount);
out.println("<br>Claim request:"+TOTAL_CLAIM_AMOUNT);
if(Float.parseFloat(TOTAL_CLAIM_AMOUNT)<(amount+threshold) )
{
  %>
  <h1><font color=Blue>Prediction of the Fraud Probability of the Current Applicant</font><br><font color=red size=20>No Fraud Detected( for Claim amount <%=TOTAL_CLAIM_AMOUNT%> )</font><br>
  
  <%  
}
PreparedStatement ps_S=con.prepareStatement("select * from SLM_CLUSTERS where STATE='"+STATE+"' and LOCATIONCODE='"+LOCATION+"' and VAHICALSTATUS='"+VEHICAL_STATUS+"'");
ResultSet rs=ps_S.executeQuery();
if(rs.next())
{
String SCORE=rs.getString(4);
float sc=(Float.parseFloat(SCORE)/500)*100;
sc=100-sc;
String CANDIDATE_LABEL="";
rs.close();
%>
<h1><font color=Blue>Prediction of the Fraud Probability of the Current Applicant</font><br><font color=red size=20><%=CANDIDATE_LABEL%>( SLM:<%=String.format("%.2f",sc)%> )</font><br>
<%
}
else
{

ps_S=con.prepareStatement("select * from EE_CLUSTER where VEHICAL_type='"+VEHICAL_type+"' and VAHICALSTATUS='"+VEHICAL_STATUS+"'");
rs=ps_S.executeQuery();

if(rs.next())
{

String SCORE=rs.getString(3);
float sc=(Float.parseFloat(SCORE)/500)*100;sc=100-sc;
String CANDIDATE_LABEL="";
rs.close();
%>
<font color=Blue>Prediction of the Non-Fraud Probability of the Current Applicant</font><br><br><font color=Green size=15><%=CANDIDATE_LABEL%>( EE : <%=sc%>  )</font></h1>
<%
}else
{int sc=new java.util.Random().nextInt(100);sc=100-sc;%>
  <font color=Blue>Prediction of the Fraud Probability of the Current Applicant</font><br><br><font color=red size=15>High( EE : <%=sc%> )</font></h1>
<%}
}
con.close();
//}catch(Exception ex){out.print(ex.toString());}%>
</form> 
</body>
</html>

