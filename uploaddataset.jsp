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
<%@page import='java.io.*,java.sql.*,in.*'%>
<%
String[] types,serviceIds;
String sector;

String path = application.getRealPath("/");
path=path+"//dataset//";

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","insurance","insurance");


App.loadApps(path+"WA_Fn-UseC_-Marketing-Vehical-Value-Analysis.txt");
  %>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Dataset Successfully Updated to the Server</h2>
          <p>
</p>
        </div>
        </div>
     <div class="sidebar">
        
        <div class="gadget" align="justify">

         <%-- <h2 class="star"><span>About Us</span></h2>
          <ul class="sb_menu">
<li><u>           Distributed data </u></li>
<li>
Based on its operational circumstances the data may be partitioned into 2/more.
The data partitioning may occure in 3 ways.

<Ul>
	<li>	Horizontal  partitioning</li>
	<li>	Vertical  partitioning.</li>
	<li>	Orbitary partitioning.</li>
</Ul>

<li>
A distributed database is a database in which portions of the database are stored on multiple locations.
Inconsistencies

<li>
The violations of the functional dependencies
Functional dependency is a relationship that exists between two attributes.[ unique , check ]
<li>
<u>
Incremental detection
</u>
<li>
Dynamic detections of Inconsistencies in the distributed database
<li>
The need for the study is evident since real-life data is often dirty, distributed and frequently updated.
<li>
It is often prohibitively expensive to re-compute the entire set of violations when D is updated.
<li>
We investigate incremental detection of errors in distributed data. 
For Given a distributed database D,
a set E of conditional functional dependencies (CFDs),
the set V of violations of the CFDs in D, 
and updates _D to D, it is to find,
with minimum data shipment/changes _V to V in response to _D. 
<li>
We show that the incremental detection problem is NP-complete for database D that is partitioned either vertically or horizontally, even when  E and D are fixed. Nevertheless, we show that it is bounded: there exist algorithms to detect errors such that their computational cost and data shipment are both linear in the size of _D and _V, independent of the size of the database D. 
<li>
We provide such incremental algorithms for vertically partitioned data and horizontally partitioned data, and show that the algorithms are optimal. 
          
            
          </ul>--%>

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

