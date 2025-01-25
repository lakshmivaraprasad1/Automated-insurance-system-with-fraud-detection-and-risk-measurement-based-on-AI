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
<%@page import='java.io.*'%>
<%
String path = application.getRealPath("/");
path=path+"//dataset//";

  FileInputStream fin=new FileInputStream(path+"WA_Fn-UseC_-Marketing-Vehical-Value-Analysis.txt");
    byte[] bDataset=new byte[fin.available()];
    fin.read(bDataset);
    fin.close();
    String sDataset=new String(bDataset);
String header=sDataset.substring(0,sDataset.indexOf("\n"));
String readings=sDataset.substring(sDataset.indexOf("\n"));

  
%>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar1">
        <div class="article1">
          <h3>Real Time Dataset Collected from UCI Machine Learning Repository's <br> 
          <font color=blue>
WA_Fn-UseC_-Marketing-Vehical-Value-Analysis</font>
<br>Attribute Description !<br>
<label for="name1"><font color=red>PLNo,State,Lifetime Value,Response,Coverage,Vehical Type,Effective To Date,VahicalStatus,Expired,Invoice,Location Code,Marital Status,Monthly Premium Auto,Months Since Last Claim,Months Since Policy Inception,Number of Open Complaints,Number of Policies,Policy Type,Policy,Renew Offer Type,Sales Channel,Total Claim Amount,Vehicle Class,Vehicle Size</font></label><br>
Upload Data Set [ <a href='uploaddataset.jsp'><font size=5>Update</font></a> ]
</h3>
</div>
<div class="article1" >
<textarea id="message" name="message" rows="80" cols="300"><%=readings%></textarea>
      </div>
     <div class="sidebar">
        
        <div class="gadget" align="justify">
    
</div>
      <div class="gadget">
          
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>


  
      
      
</div>
</body>
</html>

